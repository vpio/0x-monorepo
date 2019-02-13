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

pragma solidity 0.5.3;

import "../src/interfaces/IERC1155Receiver.sol";


contract DummyERC1155Receiver is
    IERC1155Receiver
{


    /*
    // Function selector for ERC1155Receiver.onERC1155Received
    // 0x150b7a02
    bytes4 constant internal ERC1155_RECEIVED = bytes4(keccak256("onERC1155Received(address,address,uint256,bytes)"));

    event TokenReceived(
        address operator,
        address from,
        uint256 tokenId,
        bytes data
    );

    /// @notice Handle the receipt of an NFT
    /// @dev The ERC1155 smart contract calls this function on the recipient
    ///      after a `transfer`. This function MAY throw to revert and reject the
    ///      transfer. Return of other than the magic value MUST result in the
    ///      transaction being reverted.
    ///      Note: the contract address is always the message sender.
    /// @param _operator The address which called `safeTransferFrom` function
    /// @param _from The address which previously owned the token
    /// @param _tokenId The NFT identifier which is being transferred
    /// @param _data Additional data with no specified format
    /// @return `bytes4(keccak256("onERC1155Received(address,address,uint256,bytes)"))`
    ///         unless throwing
    function onERC1155Received(
        address _operator,
        address _from,
        uint256 _tokenId,
        bytes _data
    )
        external
        returns (bytes4)
    {
        emit TokenReceived(
            _operator,
            _from,
            _tokenId,
            _data
        );
        return ERC1155_RECEIVED;
    }

    */
}