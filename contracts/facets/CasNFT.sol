// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./ERC721URIStorage.sol";
import "../libraries/ERC721Storage.sol";

contract CasNFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    function safeMint(address to, string memory uri) public {
        uint256 tokenId = nft._myCounter.current();
        require(tokenId <= nft.MAX_SUPPLY, "Sorry, mint completed!");
        nft._myCounter.increment();
        _safeMint(to, tokenId);
        _setTokenURI(tokenId, uri);
    }
}
