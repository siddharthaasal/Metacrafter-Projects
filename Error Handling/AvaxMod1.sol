// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MetacrafterProject{
        
        int256 public evenNum;
        int256 public saved_money=1000;
        uint256 public votes = 0;

        function implement_require(int256 rent_to_pay) external returns (int256){
            require(saved_money>=rent_to_pay, "Insufficient savings to pay rent");
            saved_money = saved_money - rent_to_pay;
            return saved_money;
        }

        function implement_assert(int256 num) external returns (int256) {
            assert(num%2==0);
            evenNum=num;
            return evenNum;
        }

        function implement_revert(int256 age) external{
            if(age<18){
                revert("You are not eligible to vote");
            }
            votes++;

        }
}