app: lyx 
app: LyX.exe
app: LyX for Windows

-

settings():
    key_wait = 2
    insert_wait = 14
#tag(): user.line_commands
{user.tex_symbols}:
    key(\)
    insert(tex_symbols)
    key(space)
greek {user.tex_greek_letters}:
    key(\)
    insert(tex_greek_letters)
    key(space)
<number> {user.mathfly_fractions}:
	key(alt-m f)
	insert(number)
	key(down)
    insert(mathfly_fractions)
    key(right)

#matrices are surrounded by square brackets
matrix one by <number>:
    key("alt-m [")
    insert('\\array ')
    key("alt-m c i")
    repeat(number-2)

matrix <number> by one:
    key("alt-m [")
    insert('\\array ')
    key("alt-m w i")
    repeat(number-2)

matrix <number> by <number>:
    key("alt-m [")
 	insert("\\array ")
 	key("alt-m w i")
 	repeat(number_1-2)
 	key("alt-m c i")
     repeat(number_2-2)

cross <number> by <number>:
#    insert('\\left| \\right|') 
    key("alt-m |")
 	insert("\\array ")
 	key("alt-m w i")
 	repeat(number_1-2)
 	key("alt-m c i")
     repeat(number_2-2)

fraction: key(alt-m f)
over: key(shift-left alt-m f down)
(super script | to the power): key(^)
sub script: key(_)
squared: key(^ 2 right)
cubed: key(^ 3 right)
(prekris | parens | brackets | parents): key(alt-m ()
(brax | square brackets): key(alt-m [)
curly [brackets]: key(alt-m {)
absolute: key(alt-m |)
add matrix row: key(alt-m w i)
(delete | remove) matrix row: key(alt-m w d)
add matrix column: key(alt-m c i)
(delete | remove) matrix column: key(alt-m c d)

accent tilde: key(alt-m &)
accent dot: key(alt-m .)
accent bar: key(alt-m -)
accent vector: key(alt-m v)
#
blank summation: "\\sum "
summation:
	insert("\\stackrelthree ")
    key(down)
    insert("\\sum ")
    key(down)
big union:
    insert('\\stackrelthree ')
    key(down)
    insert('\\bigcup ')
    key(down)
blank product: "\\prod "
product:
	insert("\\stackrelthree ")
    key(down)
    insert("\\prod ")
    key(down)
limit:
	insert("\\underset \\lim ")
	key(down)
blank limit: "\\lim "
label above: "\\overset "
label below: "\\underset "
prime:
	insert("^\\prime ")
	key(right)
degrees:
	insert("^\\circ ")
	key(right)
exponential:
	insert("\\exp ")
	key(alt-m ()
expectation:
	insert("E")
	key(alt-m ()
variance:
	insert("Var")
	key(alt-m ()
#
real numbers:
	insert("\\mathbb R")
	key(right)
complex numbers:
	insert("\\mathbb C")
	key(right)
integer numbers:
	insert("\\mathbb Z")
	key(right)
rational numbers:
	insert("\\mathbb Q")
	key(right)
natural numbers:
	insert("\\mathbb N")
	key(right)
#
# Program control
#
new file: key(ctrl-n)
open file: key(ctrl-o)
save as: key(ctrl-shift-s)
math: key(ctrl-m)
display mode: key(ctrl-shift-m)
normal mode: key(alt-p s)
view PDF: key(ctrl-r)
update PDF: key(ctrl-shift-r)
next tab: key(ctrl-pgdown)
(prior | previous) tab: key(ctrl-pgup)
close tab: key(ctrl-w)
move line up: key(alt-up)
move line down: key(alt-down)
#
insert (in line formula | in line): key(alt-i h i)
insert (numbered formula): key(alt-i h n)
insert (display formula | display): key(alt-i h d)
insert equation array: key(alt-i h e)
insert (AMS align environment | AMS align): key(alt-i h a)
insert AMS align at [environment]: key(alt-i h t)
insert AMS flalign [environment]: key(alt-i h f)
insert (AMS gathered environment | AMS gather): key(alt-i h g)
insert (AMS multline [environment]| multiline): key(alt-i h m)
insert array [environment]: key(alt-i h y)
insert (cases [environment] | piecewise): key(alt-i h c)
insert (aligned [environment] | align): key(alt-i h l)
insert aligned at [environment]: key(alt-i h v)
insert gathered [environment]: key(alt-i h h)
insert split [environment]: key(alt-i h s)
insert delimiters: key(alt-i h r)
insert matrix: key(alt-i h x)
insert macro: key(alt-i h o)
#
insert [bulleted] list: key(alt-p b)
insert numbered list: key(alt-p e)
insert description: key(alt-p d)
insert part: key(alt-p 0)
insert (section | heading): key(alt-p 2)
insert sub (section | heading): key(alt-p 3)
insert sub sub (section | heading): key(alt-p 4)
insert paragraph: key(alt-p 5)

#commands for quick subscripts
under (<user.letter>):
    key(_)
    insert(letter)
    edit.right()

under (<number>):
    key(_)
    insert(number)
    edit.right()

<user.letter> under (<number>):
    insert(letter)
    key(_)
    insert(number)
    edit.right()
#commands for quick superscripts
super (<number>):
    key(^)
    insert(number)
    edit.right()

super (<user.letter>):
    key(^)
    insert(letter)
    edit.right()
#commands and symbols for matrix operations
transpose:
    key(^)
    insert("T")
    edit.right()
trace: insert("tr")
#use this in a matrix to add line to create an augmented matrix
line right:
    key("alt-m c z")
line left:
    key("alt-m c a")
inverse:
    key(^)
    insert("-1")
    key(right)
#insert operations in labels 
operation:
    insert("\overset ")
    insert("~")
    key(up)
operations:
    insert("\stackrelthree ")
    key(down)
    insert("~")
    key(up)
row <number>:
    insert("R_")
    insert(number)
    key(right)

not equal: key(alt-m =)

#e*g. "m x n matrix"
<user.letter> by <user.letter>:
    key(ctrl-m)
    insert(letter_1)
    edit.right()
    insert(" x ")
    key(ctrl-m)
    insert(letter_2)
    edit.right()
    edit.right()
    insert("  ")

#Replaced hat with vector
hat <user.letter>:
 key(alt-m v)
 insert(letter)
 edit.right() 

zero [matrix | vector]:
    key(alt-m v)
    insert("0")
    edit.right()

state null: "null"
state column: "col"
call: 
    insert("\mathcal ")
oh: "0"

math transformation:
    insert(' ')
    key(ctrl-m)
    insert("T:\\mathbb R ^n \\longrightarrow \\mathbb R ^m   ")

state span: "sp"
state done: "\\blacksquare "
one to one: " 1-1 " 
determine <user.letter>:
    insert('\det ')
    key(alt-m ( )
    user.keys_uppercase_letters(letter)
    edit.right()
    
determine:
    insert('\det')
    key(alt-m ()

cases: "\cases "
huge zero:
    insert("\\text{\huge0")
    edit.right()
    edit.right()
part real:
    insert('\\textnormal Re ')
    edit.right()
part imagine:
    insert('\\textnormal Im ')
    edit.right()
argument:
    insert('\\textnormal Arg')
    edit.right()
