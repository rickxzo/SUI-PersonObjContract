module person::person{
    use std::string::{Self, String};
    use sui::object::{Self, UID, new};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;

    public struct Person has key, store{
        id: UID,
        name: String,
        city: String,
        dob: String,
        age: u8
    }

    public entry fun mint(name_bytes: vector<u8>, city_bytes: vector<u8>, dob_bytes: vector<u8>, age: u8, ctx: &mut TxContext){
        let object = Person{
            id: new(ctx),
            name: string::utf8(name_bytes),
            city: string::utf8(city_bytes),
            dob: string::utf8(dob_bytes),
            age: age
        };
        transfer::public_transfer(object, tx_context::sender(ctx));
    }
}