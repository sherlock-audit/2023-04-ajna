
# Ajna Update contest details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Q&A

### Q: On what chains are the smart contracts going to be deployed?
Ethereum mainnet, Arbitrum, Optimism, Binance Smart Chain, Polygon, Fantom, Tron, Avalanche
___

### Q: Which ERC20 tokens do you expect will interact with the smart contracts? 
any - ERC20's are used in fungible, collection and subset pool types.
The following types of tokens are incompatible with Ajna, and no countermeasures exist to explicitly prevent creating a pool with such tokens, actors should use them at their own risk:
* NFT and fungible tokens which charge a fee on transfer.
* Fungible tokens whose balance rebases.
* Fungible tokens with more than 18 decimals or 0 decimals, whose decimals() function does not return a constant value, or which do not implement the optional decimals() function.
Borrowers cannot draw debt from a pool in the same block as when the pool was created.
With the exception of quantized prices, pool inputs and most accumulators are not explicitly limited. The pool will stop functioning when the bounds of a uint256 need to be exceeded to process a request.
___

### Q: Which ERC721 tokens do you expect will interact with the smart contracts? 
any - ERC721's are used in collection and subset pool types
___

### Q: Which ERC777 tokens do you expect will interact with the smart contracts? 
none
___

### Q: Are there any FEE-ON-TRANSFER tokens interacting with the smart contracts?
none
___

### Q: Are there any REBASING tokens interacting with the smart contracts?
none
___

### Q: Are the admins of the protocols your contracts integrate with (if any) TRUSTED or RESTRICTED?
N/A
___

### Q: Is the admin/owner of the protocol/contracts TRUSTED or RESTRICTED?
N/A
___

### Q: Are there any additional protocol roles? If yes, please explain in detail:
N/A
___

### Q: Is the code/contract expected to comply with any EIPs? Are there specific assumptions around adhering to those EIPs that Watsons should be aware of?
EIP-4494
___

### Q: Please list any known issues/acceptable risks that should not result in a valid finding.
N/A
___

### Q: Please provide links to previous audits (if any).
https://github.com/ajna-finance/audits
___

### Q: Are there any off-chain mechanisms or off-chain procedures for the protocol (keeper bots, input validation expectations, etc)?
Users may deceide to run keepers themselves although that is purely an assumption based off of the inscentives provided for certain actions in the protocol. The protocol should be able to function without designated "keepers".
___

### Q: In case of external protocol integrations, are the risks of external contracts pausing or executing an emergency withdrawal acceptable? If not, Watsons will submit issues related to these situations that can harm your protocol's functionality.
N/A
___



# Audit scope

[ajna-grants @ 65d52ce52039577b1cfefc76cbbf0030a87f4845](https://github.com/ajna-finance/ajna-grants/tree/65d52ce52039577b1cfefc76cbbf0030a87f4845)
- [ajna-grants/src/grants/GrantFund.sol](ajna-grants/src/grants/GrantFund.sol)
- [ajna-grants/src/grants/base/storage.sol](ajna-grants/src/grants/base/storage.sol)


[ajna-core @ e3632f6d0b196fb1bf1e59c05fb85daf357f2386](https://github.com/ajna-finance/ajna-core/tree/e3632f6d0b196fb1bf1e59c05fb85daf357f2386)

