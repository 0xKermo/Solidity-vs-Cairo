            ############################################################################################################
            #                                                                                                          # 
            #                                                   Cairo                                                  #
            #                                                                                                          #
            ############################################################################################################



##### Setters #####

# arrays 
local example_array : felt*
assert example_array[0] = "example"

# storage arrays
@storage_var
func example_array(i : felt) -> (res : felt):
end

example_array.write(0, 123)
example_array.write(1, 456)


# array with a struct
let (local example_struct_array : MyStruct*) = alloc()
assert example_struct_array[0] = MyStruct(
    first_member=1, second_member=2) 

##### Getters #####
let a = example_array[0] # return "example"
let a_first =  example_struct_array[0].first_member
let a_second = example_struct_array[0].second_member

#for storage arrays
example_array.read(0) # return 123
example_array.read(1) # return 456


            ############################################################################################################
            #                                                                                                          # 
            #                                                   Solidity                                               #
            #                                                                                                          #
            ############################################################################################################

#### Setters #####

# arrays 
mapping(uint256 => uint256) public example_array;
example_array.push(123);

# or 
example_array[0] = 123


# array with a struct 
mapping(uint256 => MyStruct) public mystruct;
mystruct[0] = MyStruct({
    first_member:1,
    second_member: 2,
});

# or 
mystruct.push(MyStruct({
    first_member:1,
    second_member: 2,
}));


##### Getters #####
uint256 a = example_array[0]; # return 123
uint256 a_first = mystruct[0].first_member; # return 1
uint256 a_second = mystruct[0].second_member; # return 2