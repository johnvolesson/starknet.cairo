#[contract] // checked 
mod HelloStarknet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


   #[event] //just added
    fn Hello(from: ContractAddress, value: felt252) {}


/*
*ruturn 
*/
    #[external]
    fn Say_Hello(message: felt252) {
        let caller = get_caller_address();
        Hello(caller, message);
    }

}
