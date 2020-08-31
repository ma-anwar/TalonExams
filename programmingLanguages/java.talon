mode: user.java
mode: command
and code.language: java
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic

action(user.code_operator_indirection): ""
action(user.code_operator_address_of): ""
action(user.code_operator_structure_deference): ""
action(user.code_operator_lambda): ""
action(user.code_operator_subscript): 
	insert("[]")
	key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "

action(user.code_self): "self"
action(user.code_null): "null"
action(user.code_is_null): ""
action(user.code_is_not_null): ""
action(user.code_state_if): 
    insert("if ") 
action(user.code_state_else_if): 
    insert("else if ")
action(user.code_state_else): 
	insert("else ")
action(user.code_state_switch):
    insert("switch ") 
action(user.code_state_case):
	insert("case ") 
action(user.code_state_for):
    insert('for ')
action(user.code_state_while): 
    insert("while ")
action(user.code_type_class): "class "
action(user.code_comment): "//"
action(user.code_state_return):
    insert("return ")
action(user.code_state_do):
    insert("do ")
action(user.code_import):
    insert("import ")
    
state break: 
    insert('break')
