
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

[ajna-core @ e3632f6d0b196fb1bf1e59c05fb85daf357f2386](https://github.com/ajna-finance/ajna-core/tree/e3632f6d0b196fb1bf1e59c05fb85daf357f2386)

- [ajna-core/src/ERC20Pool.sol](ajna-core/src/ERC20Pool.sol)
- [ajna-core/src/ERC20PoolFactory.sol](ajna-core/src/ERC20PoolFactory.sol)
- [ajna-core/src/ERC721Pool.sol](ajna-core/src/ERC721Pool.sol)
- [ajna-core/src/ERC721PoolFactory.sol](ajna-core/src/ERC721PoolFactory.sol)
- [ajna-core/src/PoolInfoUtils.sol](ajna-core/src/PoolInfoUtils.sol)
- [ajna-core/src/PositionManager.sol](ajna-core/src/PositionManager.sol)
- [ajna-core/src/RewardsManager.sol](ajna-core/src/RewardsManager.sol)
- [ajna-core/src/base/FlashloanablePool.sol](ajna-core/src/base/FlashloanablePool.sol)
- [ajna-core/src/base/PermitERC721.sol](ajna-core/src/base/PermitERC721.sol)
- [ajna-core/src/base/Pool.sol](ajna-core/src/base/Pool.sol)
- [ajna-core/src/base/PoolDeployer.sol](ajna-core/src/base/PoolDeployer.sol)
- [ajna-core/src/interfaces/pool/IERC3156FlashBorrower.sol](ajna-core/src/interfaces/pool/IERC3156FlashBorrower.sol)
- [ajna-core/src/interfaces/pool/IERC3156FlashLender.sol](ajna-core/src/interfaces/pool/IERC3156FlashLender.sol)
- [ajna-core/src/interfaces/pool/IPool.sol](ajna-core/src/interfaces/pool/IPool.sol)
- [ajna-core/src/interfaces/pool/IPoolFactory.sol](ajna-core/src/interfaces/pool/IPoolFactory.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolBorrowerActions.sol](ajna-core/src/interfaces/pool/commons/IPoolBorrowerActions.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolDerivedState.sol](ajna-core/src/interfaces/pool/commons/IPoolDerivedState.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolErrors.sol](ajna-core/src/interfaces/pool/commons/IPoolErrors.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolEvents.sol](ajna-core/src/interfaces/pool/commons/IPoolEvents.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolImmutables.sol](ajna-core/src/interfaces/pool/commons/IPoolImmutables.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolInternals.sol](ajna-core/src/interfaces/pool/commons/IPoolInternals.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolKickerActions.sol](ajna-core/src/interfaces/pool/commons/IPoolKickerActions.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolLPActions.sol](ajna-core/src/interfaces/pool/commons/IPoolLPActions.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolLenderActions.sol](ajna-core/src/interfaces/pool/commons/IPoolLenderActions.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolSettlerActions.sol](ajna-core/src/interfaces/pool/commons/IPoolSettlerActions.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolState.sol](ajna-core/src/interfaces/pool/commons/IPoolState.sol)
- [ajna-core/src/interfaces/pool/commons/IPoolTakerActions.sol](ajna-core/src/interfaces/pool/commons/IPoolTakerActions.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20Pool.sol](ajna-core/src/interfaces/pool/erc20/IERC20Pool.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20PoolEvents.sol](ajna-core/src/interfaces/pool/erc20/IERC20PoolEvents.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20PoolBorrowerActions.sol](ajna-core/src/interfaces/pool/erc20/IERC20PoolBorrowerActions.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20PoolFactory.sol](ajna-core/src/interfaces/pool/erc20/IERC20PoolFactory.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20PoolLenderActions.sol](ajna-core/src/interfaces/pool/erc20/IERC20PoolLenderActions.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20PoolImmutables.sol](ajna-core/src/interfaces/pool/erc20/IERC20PoolImmutables.sol)
- [ajna-core/src/interfaces/pool/erc20/IERC20Taker.sol](ajna-core/src/interfaces/pool/erc20/IERC20Taker.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721Pool.sol](ajna-core/src/interfaces/pool/erc721/IERC721Pool.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolBorrowerActions.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolBorrowerActions.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolErrors.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolErrors.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolEvents.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolEvents.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolFactory.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolFactory.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolImmutables.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolImmutables.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolLenderActions.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolLenderActions.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721PoolState.sol](ajna-core/src/interfaces/pool/erc721/IERC721PoolState.sol)
- [ajna-core/src/interfaces/pool/erc721/IERC721Taker.sol](ajna-core/src/interfaces/pool/erc721/IERC721Taker.sol)
- [ajna-core/src/interfaces/position/IPositionManager.sol](ajna-core/src/interfaces/position/IPositionManager.sol)
- [ajna-core/src/interfaces/position/IPositionManagerDerivedState.sol](ajna-core/src/interfaces/position/IPositionManagerDerivedState.sol)
- [ajna-core/src/interfaces/position/IPositionManagerEvents.sol](ajna-core/src/interfaces/position/IPositionManagerEvents.sol)
- [ajna-core/src/interfaces/position/IPositionManagerErrors.sol](ajna-core/src/interfaces/position/IPositionManagerErrors.sol)
- [ajna-core/src/interfaces/position/IPositionManagerOwnerActions.sol](ajna-core/src/interfaces/position/IPositionManagerOwnerActions.sol)
- [ajna-core/src/interfaces/position/IPositionManagerState.sol](ajna-core/src/interfaces/position/IPositionManagerState.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManager.sol](ajna-core/src/interfaces/rewards/IRewardsManager.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManagerDerivedState.sol](ajna-core/src/interfaces/rewards/IRewardsManagerDerivedState.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManagerErrors.sol](ajna-core/src/interfaces/rewards/IRewardsManagerErrors.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManagerEvents.sol](ajna-core/src/interfaces/rewards/IRewardsManagerEvents.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManagerOwnerActions.sol](ajna-core/src/interfaces/rewards/IRewardsManagerOwnerActions.sol)
- [ajna-core/src/interfaces/rewards/IRewardsManagerState.sol](ajna-core/src/interfaces/rewards/IRewardsManagerState.sol)
- [ajna-core/src/libraries/external/BorrowerActions.sol](ajna-core/src/libraries/external/BorrowerActions.sol)
- [ajna-core/src/libraries/external/KickerActions.sol](ajna-core/src/libraries/external/KickerActions.sol)
- [ajna-core/src/libraries/external/LPActions.sol](ajna-core/src/libraries/external/LPActions.sol)
- [ajna-core/src/libraries/external/LenderActions.sol](ajna-core/src/libraries/external/LenderActions.sol)
- [ajna-core/src/libraries/external/PoolCommons.sol](ajna-core/src/libraries/external/PoolCommons.sol)
- [ajna-core/src/libraries/external/PositionNFTSVG.sol](ajna-core/src/libraries/external/PositionNFTSVG.sol)
- [ajna-core/src/libraries/external/SettlerActions.sol](ajna-core/src/libraries/external/SettlerActions.sol)
- [ajna-core/src/libraries/external/TakerActions.sol](ajna-core/src/libraries/external/TakerActions.sol)
- [ajna-core/src/libraries/helpers/RevertsHelper.sol](ajna-core/src/libraries/helpers/RevertsHelper.sol)
- [ajna-core/src/libraries/helpers/PoolHelper.sol](ajna-core/src/libraries/helpers/PoolHelper.sol)
- [ajna-core/src/libraries/helpers/SafeTokenNamer.sol](ajna-core/src/libraries/helpers/SafeTokenNamer.sol)
- [ajna-core/src/libraries/internal/Buckets.sol](ajna-core/src/libraries/internal/Buckets.sol)
- [ajna-core/src/libraries/internal/Deposits.sol](ajna-core/src/libraries/internal/Deposits.sol)
- [ajna-core/src/libraries/internal/Loans.sol](ajna-core/src/libraries/internal/Loans.sol)
- [ajna-core/src/libraries/internal/Maths.sol](ajna-core/src/libraries/internal/Maths.sol)

[ajna-grants @ 65d52ce52039577b1cfefc76cbbf0030a87f4845](https://github.com/ajna-finance/ajna-grants/tree/65d52ce52039577b1cfefc76cbbf0030a87f4845)

- [ajna-grants/src/grants/GrantFund.sol](ajna-grants/src/grants/GrantFund.sol)
- [ajna-grants/src/grants/base/Storage.sol](ajna-grants/src/grants/base/Storage.sol)
- [ajna-grants/src/grants/interfaces/IGrantFund.sol](ajna-grants/src/grants/interfaces/IGrantFund.sol)
- [ajna-grants/src/grants/interfaces/IGrantFundActions.sol](ajna-grants/src/grants/interfaces/IGrantFundActions.sol)
- [ajna-grants/src/grants/interfaces/IGrantFundErrors.sol](ajna-grants/src/grants/interfaces/IGrantFundErrors.sol)
- [ajna-grants/src/grants/interfaces/IGrantFundEvents.sol](ajna-grants/src/grants/interfaces/IGrantFundEvents.sol)
- [ajna-grants/src/grants/interfaces/IGrantFundState.sol](ajna-grants/src/grants/interfaces/IGrantFundState.sol)
- [ajna-grants/src/grants/libraries/Maths.sol](ajna-grants/src/grants/libraries/Maths.sol)
- [ajna-grants/src/token/AjnaToken.sol](ajna-grants/src/token/AjnaToken.sol)
- [ajna-grants/src/token/BurnWrapper.sol](ajna-grants/src/token/BurnWrapper.sol)
