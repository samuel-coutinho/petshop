pragma solidity >=0.4.22 <0.8.0;

contract Adoption {

    address[16] public adopters;


    bool doorsStatus = false;
    bool isDoorsTestPass = false; 

  function setDoorsStatus(uint petId) public returns (bool) {
    adopters[petId] = msg.sender;
    isDoorsTestPass = true;

    return true;      
      
  }
    // Adopting a pet
  function adopt(uint petId) public returns (uint) {
    require(petId >= 0 && petId <= 15);

    adopters[petId] = msg.sender;

    return petId;
  }

  // Retrieving the adopters
  function getAdopters() public view returns (bool) {
    return isDoorsTestPass;
  }   

}