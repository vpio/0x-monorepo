/*

  Copyright 2018 ZeroEx Intl.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

*/

// solhint-disable
pragma solidity ^0.5.3;


/// @dev This contract documents the revert reasons used in the Exchange contract.
/// This contract is intended to serve as a reference, but is not actually used for efficiency reasons.
contract LibExchangeErrors {

    /// Order validation errors ///
    string constant internal ORDER_UNFILLABLE = "ORDER_UNFILLABLE";                              // Order cannot be filled.
    string constant internal INVALID_MAKER = "INVALID_MAKER";                                    // Invalid makerAddress.
    string constant internal INVALID_TAKER = "INVALID_TAKER";                                    // Invalid takerAddress.
    string constant internal INVALID_SENDER = "INVALID_SENDER";                                  // Invalid `msg.sender`.
    string constant internal INVALID_ORDER_SIGNATURE = "INVALID_ORDER_SIGNATURE";                // Signature validation failed. 
    
    /// fillOrder validation errors ///
    string constant internal INVALID_TAKER_AMOUNT = "INVALID_TAKER_AMOUNT";                      // takerAssetFillAmount cannot equal 0.
    string constant internal ROUNDING_ERROR = "ROUNDING_ERROR";                                  // Rounding error greater than 0.1% of takerAssetFillAmount. 
    
    /// Signature validation errors ///
    string constant internal INVALID_SIGNATURE = "INVALID_SIGNATURE";                            // Signature validation failed. 
    string constant internal SIGNATURE_ILLEGAL = "SIGNATURE_ILLEGAL";                            // Signature type is illegal.
    string constant internal SIGNATURE_UNSUPPORTED = "SIGNATURE_UNSUPPORTED";                    // Signature type unsupported.
    
    /// cancelOrdersUptTo errors ///
    string constant internal INVALID_NEW_ORDER_EPOCH = "INVALID_NEW_ORDER_EPOCH";                // Specified salt must be greater than or equal to existing orderEpoch.

    /// fillOrKillOrder errors ///
    string constant internal COMPLETE_FILL_FAILED = "COMPLETE_FILL_FAILED";                      // Desired takerAssetFillAmount could not be completely filled. 

    /// matchOrders errors ///
    string constant internal NEGATIVE_SPREAD_REQUIRED = "NEGATIVE_SPREAD_REQUIRED";              // Matched orders must have a negative spread.

    /// Transaction errors ///
    string constant internal REENTRANCY_ILLEGAL = "REENTRANCY_ILLEGAL";                          // Recursive reentrancy is not allowed. 
    string constant internal INVALID_TX_HASH = "INVALID_TX_HASH";                                // Transaction has already been executed. 
    string constant internal INVALID_TX_SIGNATURE = "INVALID_TX_SIGNATURE";                      // Signature validation failed. 
    string constant internal FAILED_EXECUTION = "FAILED_EXECUTION";                              // Transaction execution failed. 
    
    /// registerAssetProxy errors ///
    string constant internal ASSET_PROXY_ALREADY_EXISTS = "ASSET_PROXY_ALREADY_EXISTS";          // AssetProxy with same id already exists.

    /// dispatchTransferFrom errors ///
    string constant internal ASSET_PROXY_DOES_NOT_EXIST = "ASSET_PROXY_DOES_NOT_EXIST";          // No assetProxy registered at given id.
    string constant internal TRANSFER_FAILED = "TRANSFER_FAILED";                                // Asset transfer unsuccesful.

    /// Length validation errors ///
    string constant internal LENGTH_GREATER_THAN_0_REQUIRED = "LENGTH_GREATER_THAN_0_REQUIRED";  // Byte array must have a length greater than 0.
    string constant internal LENGTH_GREATER_THAN_3_REQUIRED = "LENGTH_GREATER_THAN_3_REQUIRED";  // Byte array must have a length greater than 3.
    string constant internal LENGTH_0_REQUIRED = "LENGTH_0_REQUIRED";                            // Byte array must have a length of 0.
    string constant internal LENGTH_65_REQUIRED = "LENGTH_65_REQUIRED";                          // Byte array must have a length of 65.
}
