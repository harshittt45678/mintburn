// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;



contract MyToken {

    // public variables here
    string public tokenname ="HARSHIT";
    string public tokenabbrev="HRH";
    uint public totalsupply=6500;
    // mapping variable here
    mapping(address => uint)public balance;
    // mint function
    function mint(address mintaddress, uint  mintvalue)public {
      totalsupply += mintvalue;
      balance[mintaddress] += mintvalue;
   }
    // burn function
   function burn(address burnaddress, uint burnvalue)public {
      if(balance[burnaddress]>= burnvalue){
        totalsupply -= burnvalue;
        balance[burnaddress] -= burnvalue;
      }
     }
  }