tag: user.code_comment
-
comment: user.code_comment()
comment line: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
	edit.line_start()
    user.code_comment()
comment <user.text>$: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    user.code_comment()
    insert(user.text)
