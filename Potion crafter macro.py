import os, json, time, threading
import tkinter as tk
from tkinter import ttk, simpledialog, messagebox, StringVar
import autoit
import keyboard
import mouse # Fuck you Cresqnt

craftertitle = "Sol's RNG Potion Crafter Macro"
potions_directory = "crafting_files_do_not_open"
exportfiletype = ".json"

try:
    import ttkbootstrap as tb
    from ttkbootstrap import ttk as tb_ttk
    TTKB = True
except Exception:
    TTKB = False
    tb = None
    tb_ttk = None

class MacroApp:
    def __init__(self, root):
        self.root = root
        self.mode = StringVar(value="Idle")
        self.loop_thread = None
        self.stop_event = threading.Event()
        self.rec_events = []
        self.rec_start = 0.0
        self.kbd_hook = None
        self.mouse_hook = None
        self.last_move_time = 0.0
        self.last_move_pos = (None, None)
        self.start_btn_main = None
        self.stop_btn_main = None
        self.start_btn_rec = None
        self.stop_btn_rec = None
        self.speed_var = StringVar(value="1x")
        self.play_speed = 1.0
        self.build_ui()
        self.ensure_dir()
        self.refresh_files()
        keyboard.add_hotkey('f1', lambda: self.root.after(0, self.handle_f1))
        keyboard.add_hotkey('f3', lambda: self.root.after(0, self.handle_f3))
        self.root.protocol("WM_DELETE_WINDOW", self.on_close)

    def ensure_dir(self):
        os.makedirs(potions_directory, exist_ok=True)

    def build_ui(self):
        if TTKB:
            self.root.title(craftertitle)
            style = tb.Style(theme="flatly")
            style.configure("Header.TLabel", font=("Segoe UI", 16, "bold"))
            style.configure("Status.TLabel", foreground="#17a2b8")
            style.configure("Run.TButton", padding=8)
            container = ttk.Frame(self.root, padding=10)
        else:
            self.root.title(craftertitle)
            container = ttk.Frame(self.root, padding=10)
        container.pack(fill="both", expand=True)
        header = ttk.Frame(container)
        header.pack(fill="x", pady=(4, 10))
        title = ttk.Label(header, text=craftertitle, style="Header.TLabel" if TTKB else "")
        title.pack(side="left")
        mode_lbl = ttk.Label(header, textvariable=self.mode, style="Status.TLabel" if TTKB else "")
        mode_lbl.pack(side="right")
        nb = ttk.Notebook(container)
        nb.pack(fill="both", expand=True)
        self.nb = nb
        self.main_tab = ttk.Frame(nb, padding=12)
        self.rec_tab = ttk.Frame(nb, padding=12)
        nb.add(self.main_tab, text="Potion Crafter")
        nb.add(self.rec_tab, text="Potion Recorder")
        top = ttk.Frame(self.main_tab)
        top.pack(fill="x", pady=(0, 12))
        ttk.Label(top, text="Select a potion to craft:").pack(side="left")
        self.file_var = StringVar()
        self.combo = ttk.Combobox(top, textvariable=self.file_var, state="readonly", width=50)
        self.combo.pack(side="left", padx=8)
        ttk.Button(top, text="Refresh", command=self.refresh_files, style="Run.TButton" if TTKB else "").pack(side="left", padx=(0,8))
        if TTKB:
            self.start_btn_main = tb.Button(top, text="Start (F1)", bootstyle="success", command=lambda: self.root.after(0, self.handle_f1), width=14)
            self.stop_btn_main = tb.Button(top, text="Stop (F3)", bootstyle="danger", command=lambda: self.root.after(0, self.handle_f3), width=14)
        else:
            self.start_btn_main = ttk.Button(top, text="Start (F1)", command=lambda: self.root.after(0, self.handle_f1), style="Run.TButton")
            self.stop_btn_main = ttk.Button(top, text="Stop (F3)", command=lambda: self.root.after(0, self.handle_f3), style="Run.TButton")
        self.start_btn_main.pack(side="left", padx=(6, 6))
        self.stop_btn_main.pack(side="left")
        ttk.Label(top, text="Speed:").pack(side="left", padx=(12,4))
        self.speed_combo = ttk.Combobox(top, textvariable=self.speed_var, values=["1x","1.5x","2x","3x"], state="readonly", width=6)
        self.speed_combo.pack(side="left")
        info = ttk.Frame(self.main_tab)
        info.pack(fill="x", pady=(12,0))
        self.main_status = StringVar(value="Ready")
        ttk.Label(info, textvariable=self.main_status).pack(anchor="w")
        recbox = ttk.Frame(self.rec_tab)
        recbox.pack(fill="x")
        rec_controls = ttk.Frame(self.rec_tab)
        rec_controls.pack(fill="x", pady=(0,8))
        if TTKB:
            self.start_btn_rec = tb.Button(rec_controls, text="Start Recording (F1)", bootstyle="success", command=lambda: self.root.after(0, self.handle_f1), width=22)
            self.stop_btn_rec = tb.Button(rec_controls, text="Stop & Save (F3)", bootstyle="danger", command=lambda: self.root.after(0, self.handle_f3), width=22)
        else:
            self.start_btn_rec = ttk.Button(rec_controls, text="Start Recording (F1)", command=lambda: self.root.after(0, self.handle_f1), style="Run.TButton")
            self.stop_btn_rec = ttk.Button(rec_controls, text="Stop & Save (F3)", command=lambda: self.root.after(0, self.handle_f3), style="Run.TButton")
        self.start_btn_rec.pack(side="left", padx=(0,8))
        self.stop_btn_rec.pack(side="left")
        self.rec_status = StringVar(value="Waiting")
        ttk.Label(self.rec_tab, textvariable=self.rec_status).pack(anchor="w", pady=(8,0))
        self.update_buttons()

    def list_files(self):
        return sorted([f for f in os.listdir(potions_directory) if f.lower().endswith(exportfiletype)])

    def refresh_files(self):
        files = self.list_files()
        self.combo["values"] = files
        if files and self.file_var.get() not in files:
            self.file_var.set(files[0])

    def handle_f1(self):
        if self.mode.get() != "Idle":
            return
        if self.nb.index(self.nb.select()) == 0:
            self.start_play_loop()
        else:
            self.start_recording()

    def handle_f3(self):
        if self.mode.get() == "Playing":
            self.stop_event.set()
        elif self.mode.get() == "Recording":
            self.stop_recording()

    def start_play_loop(self):
        file_name = self.file_var.get().strip()
        if not file_name:
            messagebox.showinfo(craftertitle, "Select a macro file first.")
            return
        path = os.path.join(potions_directory, file_name)
        try:
            with open(path, "r", encoding="utf-8") as f:
                data = json.load(f)
        except Exception as e:
            messagebox.showerror(craftertitle, f"Failed to load macro:\n{e}")
            return
        events = data.get("events", [])
        if not events:
            messagebox.showinfo(craftertitle, "Macro is empty.")
            return
        events.sort(key=lambda ev: ev.get("t", 0.0))
        speed_str = self.speed_var.get().strip().lower()
        try:
            if speed_str.endswith("x"):
                speed_val = float(speed_str[:-1])
            else:
                speed_val = float(speed_str)
            if speed_val <= 0:
                speed_val = 1.0
        except Exception:
            speed_val = 1.0
        self.play_speed = speed_val
        self.mode.set("Playing")
        self.main_status.set(f"Looping: {file_name} | Speed: {self.play_speed}x | Click Stop to end")
        self.stop_event.clear()
        self.loop_thread = threading.Thread(target=self.play_loop, args=(events,), daemon=True)
        self.loop_thread.start()
        self.update_buttons()

    def play_loop(self, events):
        while not self.stop_event.is_set():
            last_t = 0.0
            for ev in events:
                if self.stop_event.is_set():
                    break
                t = float(ev.get("t", 0.0))
                dt = t - last_t
                if self.play_speed and self.play_speed != 1.0:
                    dt = dt / self.play_speed
                if dt > 0:
                    end = time.perf_counter() + dt
                    while True:
                        if self.stop_event.is_set():
                            break
                        rem = end - time.perf_counter()
                        if rem <= 0:
                            break
                        time.sleep(min(rem, 0.01))
                if self.stop_event.is_set():
                    break
                typ = ev.get("type")
                if typ == "mouse_move":
                    autoit.mouse_move(int(ev["x"]), int(ev["y"]), 0)
                elif typ == "mouse_down":
                    b = ev.get("button", "left")
                    autoit.mouse_down(b)
                elif typ == "mouse_up":
                    b = ev.get("button", "left")
                    autoit.mouse_up(b)
                elif typ == "mouse_wheel":
                    delta = int(ev.get("delta", 0))
                    if delta != 0:
                        mouse.wheel(delta)
                elif typ == "key_down":
                    k = ev.get("key")
                    if k not in ("f1","f3"):
                        keyboard.press(k)
                elif typ == "key_up":
                    k = ev.get("key")
                    if k not in ("f1","f3"):
                        keyboard.release(k)
                last_t = t
        self.root.after(0, self.finish_play)

    def finish_play(self):
        self.mode.set("Idle")
        self.main_status.set("Ready")
        self.loop_thread = None
        self.update_buttons()

    def start_recording(self):
        if self.mode.get() != "Idle":
            return
        self.mode.set("Recording")
        self.rec_status.set("Recording...")
        self.rec_events = []
        self.rec_start = time.perf_counter()
        self.last_move_time = 0.0
        self.last_move_pos = (None, None)
        def kcb(e):
            if e.name in ("f1","f3"):
                return
            et = time.perf_counter() - self.rec_start
            self.rec_events.append({"t": et, "type": "key_down" if e.event_type == "down" else "key_up", "key": e.name})
        def mcb(e):
            et = time.perf_counter() - self.rec_start
            if isinstance(e, mouse.MoveEvent):
                x, y = int(e.x), int(e.y)
                if self.should_record_move(et, x, y):
                    self.rec_events.append({"t": et, "type": "mouse_move", "x": x, "y": y})
                    self.last_move_time = et
                    self.last_move_pos = (x, y)
            elif isinstance(e, mouse.ButtonEvent):
                pos = mouse.get_position()
                typ = "mouse_down" if e.event_type == "down" else "mouse_up"
                self.rec_events.append({"t": et, "type": typ, "button": e.button, "x": int(pos[0]), "y": int(pos[1])})
            elif isinstance(e, mouse.WheelEvent):
                self.rec_events.append({"t": et, "type": "mouse_wheel", "delta": int(e.delta)})
        self.kbd_hook = kcb
        self.mouse_hook = mcb
        keyboard.hook(self.kbd_hook)
        mouse.hook(self.mouse_hook)
        self.update_buttons()

    def should_record_move(self, et, x, y):
        lt = self.last_move_time
        lx, ly = self.last_move_pos
        if lx is None:
            return True
        if et - lt >= 0.008:
            return True
        dx = x - lx
        dy = y - ly
        if dx*dx + dy*dy >= 4:
            return True
        return False

    def stop_recording(self):
        try:
            if self.kbd_hook:
                keyboard.unhook(self.kbd_hook)
            if self.mouse_hook:
                mouse.unhook(self.mouse_hook)
        except Exception:
            pass
        self.kbd_hook = None
        self.mouse_hook = None
        self.mode.set("Idle")
        self.rec_status.set("Stopped. Saving...")
        name = simpledialog.askstring(craftertitle, "Save macro name as:")
        if name:
            safe = "".join(c for c in name if c.isalnum() or c in ("_", "-", " ")).strip()
            if safe:
                path = os.path.join(potions_directory, safe + exportfiletype)
                data = {
                    "created": time.time(),
                    "screen": {"w": self.root.winfo_screenwidth(), "h": self.root.winfo_screenheight()},
                    "events": sorted(self.rec_events, key=lambda ev: ev.get("t", 0.0))
                }
                try:
                    with open(path, "w", encoding="utf-8") as f:
                        json.dump(data, f, ensure_ascii=False)
                    self.refresh_files()
                    messagebox.showinfo(craftertitle, f"Saved: {os.path.basename(path)}")
                except Exception as e:
                    messagebox.showerror(craftertitle, f"Failed to save:\n{e}")
            else:
                messagebox.showerror(craftertitle, "Invalid file name.")
        self.rec_events = []
        self.rec_status.set("Waiting")
        self.update_buttons()

    def on_close(self):
        try:
            keyboard.unhook_all_hotkeys()
        except Exception:
            pass
        try:
            if self.kbd_hook:
                keyboard.unhook(self.kbd_hook)
            if self.mouse_hook:
                mouse.unhook(self.mouse_hook)
        except Exception:
            pass
        self.stop_event.set()
        self.root.destroy()

    def update_buttons(self):
        m = self.mode.get()
        try:
            if m == "Idle":
                if self.start_btn_main:
                    self.start_btn_main.configure(state="normal")
                if self.start_btn_rec:
                    self.start_btn_rec.configure(state="normal")
                if self.stop_btn_main:
                    self.stop_btn_main.configure(state="disabled")
                if self.stop_btn_rec:
                    self.stop_btn_rec.configure(state="disabled")
            elif m == "Playing":
                if self.start_btn_main:
                    self.start_btn_main.configure(state="disabled")
                if self.stop_btn_main:
                    self.stop_btn_main.configure(state="normal")
                if self.start_btn_rec:
                    self.start_btn_rec.configure(state="disabled")
                if self.stop_btn_rec:
                    self.stop_btn_rec.configure(state="disabled")
            elif m == "Recording":
                if self.start_btn_rec:
                    self.start_btn_rec.configure(state="disabled")
                if self.stop_btn_rec:
                    self.stop_btn_rec.configure(state="normal")
                if self.start_btn_main:
                    self.start_btn_main.configure(state="disabled")
                if self.stop_btn_main:
                    self.stop_btn_main.configure(state="disabled")
        except Exception:
            pass

def create_root():
    if TTKB:
        r = tb.Window(themename="flatly")
        return r
    return tk.Tk()

if __name__ == "__main__":
    root = create_root()
    app = MacroApp(root)
    root.mainloop()
