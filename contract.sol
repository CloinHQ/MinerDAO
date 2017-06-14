pragma solidity ^0.4.2;

contract MiningDAO {
    address[] public investors;
    
     /* The function without name is the default function that is called whenever anyone sends funds to a contract */
    function () payable {
        
    }
    
    function MiningDAO(address[] investors_) {
        investors = investors_;
    }
}
