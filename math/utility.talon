
app: lyx 
app: LyX.exe
app: LyX for Windows

-

fill <number>:
    insert(number)
    key(tab)

fill pipe:
    insert('|')
    key(tab)
push dot:
    key(end)
    key(end)
    insert(".")

push:
    key(end)
    key(end)
    insert("  ")

push comma:
    key(end)
    key(end)
    insert(", ")
push math:
    key(space)
    key(ctrl-m)

state proof: "Pf: "
state solution: "Soln: "
ordinal <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}^th   ')
    key(space) 
state where: " where "
mark <user.letter>:
    insert(' ')
    key(ctrl-m)
    insert('{letter}  ')
    key(space)
append:
    edit.right()
proof let:insert("Let ")
if and only if: insert("iff ")
matrix <user.letter>:
    insert("  ")
    key(ctrl-m)
    user.keys_uppercase_letters(letter)
    #insert(user.formatted_text(letter,"title"))
    edit.right()
    insert("  ")
state empty:
    insert("nullspace ")
state eagan:
    insert('eigenbasis ')
capital operator <user.letter> <user.letters>:
    insert('\\text ')
    sleep(10ms)
    user.keys_uppercase_letters(letter)
    user.keys_lower_case_letters(letters)
oiler:
    insert('e^i')
finite field:
    insert('\\mathbb F')
    key(right


