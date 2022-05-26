            ############################################################################################################
            #                                                                                                          # 
            #                                                   Cairo                                                  #
            #                                                                                                          #
            ############################################################################################################



struct exampleStruct:
    member first_member : felt
    member second_member : felt
    member third_member : felt 
end

# Cairo doesn’t have enums, but you can abuse a struct as an enum. For example:

struct exampleEnum:
    member first_process: felt
    member second_process: felt
    member third_process: felt
end

#### Setters #### 
exampleStruct.first_member = 1
exampleStruct.second_member = 2
exampleStruct.third_member = 3

# to as an array

@storage_var
func _structs(struct_id: felt) -> (res : exampleStruct)
end

let new_struct = exampleStruct(
    first_member=1
    second_member=2
    third_member=3
)
_structs.write(struct_id,new_struct)

            ############################################################################################################
            #                                                                                                          # 
            #                                                   Solidity                                               #
            #                                                                                                          #
            ############################################################################################################
###     Setters     ##

struct ExampleStruct {
    uint256 first_member;
    string second_member;
    address third_member;
}

ExampleStruct memory exampleStruct = ExampleStruct(1,"example",msg.sender);
# or
ExampleStruct memory exampleStruct;

exampleStruct.first_member = 1;
exampleStruct.second_member = "example";
exampleStruct.third_member = msg.sender;

# to as an array
ExampleStruct[] public ExampleStructs;
ExampleStructs.push(exampleStruct);
# or
mapping(uint256 => ExampleStruct) public ExampleStructs;
ExampleStructs[id] = exampleStruct;

# Enums
enum ExampleEnum{
    first,
    second,
    third
}
ExampleEnum public exampleEnum;
exampleEnum = ExampleEnum.first;

###     Getters     ##
uint id = 0;

ExampleStructs[id].first_member;
ExampleStructs[id].second_member;
ExampleStructs[id].third_member;

