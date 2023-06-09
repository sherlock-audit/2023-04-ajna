// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import { console } from "@std/console.sol";

import { TestBase }        from "./TestBase.sol";
import { StandardHandler } from "../handlers/StandardHandler.sol";

contract StandardTestBase is TestBase {

    uint256 internal constant NUM_ACTORS = 20;
    uint256 public constant TOKENS_TO_DISTRIBUTE = 500_000_000 * 1e18;

    StandardHandler internal _standardHandler;

    function setUp() public virtual override {
        super.setUp();

        _standardHandler = new StandardHandler(
            payable(address(_grantFund)),
            address(_ajna),
            _tokenDeployer,
            NUM_ACTORS,
            TOKENS_TO_DISTRIBUTE,
            address(this)
        );

        // explicitly target handler
        targetContract(address(_standardHandler));
    }

    function startDistributionPeriod() internal {
        // skip time for snapshots and start distribution period
        vm.roll(currentBlock + 100);
        currentBlock = block.number;
        _grantFund.startNewDistributionPeriod();
    }
}
