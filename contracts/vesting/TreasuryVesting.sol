// SPDX-License-Identifier: MIT
/*  
@author : Baris Arya Cantepe        
*/
pragma solidity ^0.8.17;

import {MidleBaseVesting} from "./MidleBaseVesting.sol";

/// @title TreasuryVesting
/// @dev Implements a token vesting mechanism where tokens are locked and released linearly over time.
/// @notice This contract is used to manage the vesting of tokens, allowing users to claim their vested tokens over a period.
contract TreasuryVesting is MidleBaseVesting {

    /// @notice Constructor to initialize. TreasuryVesting total amount is 40,000,000 MIDLE.
    /// @dev The constructor takes MIDLE contract address, TGE and the locking address. 
    /// TGE release rate is based 10,000, release rate is based 21,600,000,000.
    /// @param _midleAddress Address of the MIDLE token contract
    /// @param _tgeTimestamp TGE timestamp of the associated Vesting contract
    constructor(address _midleAddress, uint256 _tgeTimestamp )

        MidleBaseVesting(_midleAddress, 
        _tgeTimestamp,
        0,
        16,
        15000000,
        40000000 * 10 ** 18
        ) {

        lockTokens(0xFfA55B79e8475Ae276F83f17c559B74bEBf7d6CC, 
        40000000 * 10 ** 18 ); // 40,000,000 $MIDLE
    }
}
