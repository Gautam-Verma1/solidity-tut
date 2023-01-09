// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract EnumTry {
    enum Days { MONDAY,
        TUESDAY,
        WEDNESDAY,
        THURSDAY,
        FRIDAY,
        SATURDAY,
        SUNDAY }
    Days choice;
    Days constant defaultChoice = Days.WEDNESDAY;

    function setDay() public {
        choice = Days.SUNDAY;
    }

    function getLarge() public returns (Days) {
        setDay();
        return choice;
    }

    function getDefaultChoice() public pure returns (uint) {
      return uint(defaultChoice);
   }
}