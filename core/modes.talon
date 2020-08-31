#defines the various mode commands
mode: all
-
talon sleep: speech.disable()
talon wake: speech.enable()
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
^command mode$:
    mode.disable("sleep")
	mode.disable("dictation")
	#mode.disable("bug")
	mode.enable("command")
^force java$: user.code_set_language_mode("java")
^clear language modes$: user.code_clear_language_mode()
