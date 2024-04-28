// SPDX-License-Identifier: MIT
/*  
@author : Baris Arya Cantepe        
*/
pragma solidity ^0.8.17;

import {MidleBaseVesting} from "./MidleBaseVesting.sol";

/// @title LiquidityVesting
/// @dev Implements a token vesting mechanism where tokens are locked and released linearly over time.
/// @notice This contract is used to manage the vesting of tokens, allowing users to claim their vested tokens over a period.
contract LiquidityVesting is MidleBaseVesting {

    /// @notice Constructor to initialize. LiquidityVesting total amount is 120,000,000 MIDLE.
    /// @dev The constructor takes MIDLE contract address, TGE and the locking address. 
    /// TGE release rate is based 10,000, release rate is based 21,600,000,000.
    /// @param _midleAddress Address of the MIDLE token contract
    /// @param _tgeTimestamp TGE timestamp of the associated Vesting contract
    /// @param lockedUser Address of the user whose tokens are to be locked
    constructor(address _midleAddress, uint256 _tgeTimestamp, address lockedUser )

        MidleBaseVesting(_midleAddress, 
        _tgeTimestamp,
        2000,
        0,
        40000000,
        120000000 * 10 ** 18
        ) {

        lockTokens(lockedUser , 
        120000000 * 10 ** 18 ); // 120,000,000 $MIDLE
    }
}