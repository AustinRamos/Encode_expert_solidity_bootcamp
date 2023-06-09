pragma solidity ^0.8.4;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            let slot :=count.slot

            let val :=sload(slot)
            val:=add(val,num)

            sstore(slot,val)

        }
    }
}