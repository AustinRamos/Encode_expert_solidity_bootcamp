pragma solidity ^0.8.4;

contract CallVal {
    function getVal() public returns (uint256) {


        // Yul assembly magic happens within assembly{} section
        assembly {
            // stack variables are instantiated with
             let val := callvalue()
            // instantiate a stack variable that holds the value of mol
            mstore(0x40,val)
            // To return it needs to be stored in memory
            // with command mstore(MEMORY_LOCATION, STACK_VARIABLE)
            // to return you need to specify address and the size from the starting point
            return(0x40,32)
        }
    }
}