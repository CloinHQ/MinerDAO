pragma solidity ^0.4.2;

contract MiningDAO {
    address[] public investors;
    
     /* The function without name is the default function that is called whenever anyone sends funds to a contract */
    function () payable {
        address contract_ = this;
        uint256 balance = contract_.balance;
        uint256 amount = (balance / investors.length) - 0.01 ether;
        if(amount >= 0.2 ether) {
            for(uint x = 0; x < investors.length; x++) {
                if (!investors[x].send(amount)) {
                   throw;
                }
            }
        }
    }
    
    function MiningDAO(address[] investors_) {
        investors = investors_;
    }
}
