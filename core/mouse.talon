settings():
	#stop continuous scroll/gaze scroll with a pop
	user.mouse_enable_pop_stops_scroll = 0
	#enable pop click with 'control mouse' mode
	user.mouse_enable_pop_click = 1
	#hide cursor when mouse_wake is called to enable zoom mouse
	user.mouse_wake_hides_cursor = 0
control mouse: user.mouse_toggle_control_mouse()
zoom mouse: user.mouse_toggle_zoom_mouse()
camera overlay: eye_mouse.camera_overlay.toggle()
run calibration: user.mouse_calibrate()	
touch: mouse_click(0)
righty: mouse_click(1)

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> touch: 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
<user.modifiers> righty: 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
(dubclick | duke): 
	mouse_click()
	mouse_click()
(tripclick | triplick): 
	mouse_click()
	mouse_click()
	mouse_click()
wheel down: user.mouse_scroll_down()
wheel tiny [down]: mouse_scroll(20)
wheel up: user.mouse_scroll_up()
wheel tiny up: mouse_scroll(-20)
wheel upper: user.mouse_scroll_up_continuous()
wheel left: mouse_scroll(0, -40)
wheel tiny left: mouse_scroll(0, -20)
wheel right: mouse_scroll(0, 40)
wheel tiny right: mouse_scroll(0, 20)
drag: user.mouse_drag()
