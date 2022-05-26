            ############################################################################################################
            #                                                                                                          # 
            #                                                   Cairo                                                  #
            #                                                                                                          #
            ############################################################################################################

##### Setters #####

# storage variable
@storage_var
func storage_variable(i : felt):
end

storage_variable.write(1)

# local variable
func foo():
    alloc_locals
    local local_var = 1
    return ()
end

# Temporary variables
tempvar var_name = 1

##### Getters #####
storage_variable.read()


            ############################################################################################################
            #                                                                                                          # 
            #                                                   Solidity                                               #
            #                                                                                                          #
            ############################################################################################################

#### Setters #####

# global variables

bool public global_boolean = false;
address public global_address = 0x0000;
uint public global_integer = 1;
string public global_string = "global string";


