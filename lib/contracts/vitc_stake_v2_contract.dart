import 'package:vite/vite.dart';

const vitcStakeV2Contract = Contract(
  contractAddress: 'vite_c85b335e221fc99631785f3d579edd1b7a2691131b7f3998a3',
  abi: [
    {
      "constant": false,
      "inputs": [
        {"name": "newOwner", "type": "address"}
      ],
      "name": "setOwner",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "token", "type": "tokenId"}
      ],
      "name": "getVotingReward",
      "outputs": [
        {"name": "amount", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getVote",
      "outputs": [
        {"name": "last_vote", "type": "string"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getAllPoolInfo",
      "outputs": [
        {"name": "stakingTokenIds", "type": "tokenId[]"},
        {"name": "rewardTokenIds", "type": "tokenId[]"},
        {"name": "packedIntegers", "type": "uint256[]"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "PoolId", "type": "uint256"}
      ],
      "name": "getPoolInfo",
      "outputs": [
        {"name": "stakingTokenId", "type": "tokenId"},
        {"name": "rewardTokenId", "type": "tokenId"},
        {"name": "totalStakingBalance", "type": "uint256"},
        {"name": "totalRewardBalance", "type": "uint256"},
        {"name": "startBlock", "type": "uint256"},
        {"name": "endBlock", "type": "uint256"},
        {"name": "latestRewardBlock", "type": "uint256"},
        {"name": "rewardPerPeriod", "type": "uint256"},
        {"name": "rewardPerToken", "type": "uint256"},
        {"name": "paidOut", "type": "uint256"},
        {"name": "removedDecimals", "type": "uint256"},
        {"name": "timelock", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getOwner",
      "outputs": [
        {"name": "owner", "type": "address"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "PoolId", "type": "uint256"}
      ],
      "name": "deposit",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "startBlock", "type": "uint256"},
        {"name": "endBlock", "type": "uint256"},
        {"name": "stakingTokenId", "type": "tokenId"},
        {"name": "removedDecimals", "type": "uint256"},
        {"name": "timelock", "type": "uint256"}
      ],
      "name": "createStakingPool",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [],
      "name": "cancelVote",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "PoolId", "type": "uint256"},
        {"name": "amount", "type": "uint256"}
      ],
      "name": "withdraw",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "token", "type": "tokenId"}
      ],
      "name": "withdrawVotingReward",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "PoolId", "type": "uint256"},
        {"name": "addr", "type": "address"}
      ],
      "name": "getUserInfo",
      "outputs": [
        {"name": "stakingBalance", "type": "uint256"},
        {"name": "rewardDebt", "type": "uint256"},
        {"name": "depositBlock", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getPoolCount",
      "outputs": [
        {"name": "pool_count", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "PoolId", "type": "uint256"}
      ],
      "name": "withdrawDust",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "PoolId", "type": "uint256"}
      ],
      "name": "fundStakingPool",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "sbpName", "type": "string"}
      ],
      "name": "sendVote",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {"payable": true, "stateMutability": "payable", "type": "fallback"},
    {
      "inputs": [
        {"indexed": false, "name": "sbpName", "type": "string"}
      ],
      "name": "VoteForSBP",
      "type": "message"
    },
    {"inputs": [], "name": "CancelSBPVoting", "type": "message"},
    {
      "anonymous": false,
      "inputs": [
        {"indexed": false, "name": "pid", "type": "uint256"}
      ],
      "name": "PoolCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": true, "name": "addr", "type": "address"},
        {"indexed": true, "name": "pid", "type": "uint256"},
        {"indexed": false, "name": "amount", "type": "uint256"}
      ],
      "name": "Deposit",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": true, "name": "addr", "type": "address"},
        {"indexed": true, "name": "pid", "type": "uint256"},
        {"indexed": false, "name": "amount", "type": "uint256"}
      ],
      "name": "Withdraw",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": true, "name": "addr", "type": "address"},
        {"indexed": true, "name": "pid", "type": "uint256"},
        {"indexed": false, "name": "amount", "type": "uint256"}
      ],
      "name": "Claim",
      "type": "event"
    }
  ],
  offchainCode:
      '608060405260043610610087576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680631d0c767314610089578063443e6f50146100d8578063499c7e311461015c5780634b2e24371461024e5780635c6cfcbe1461030e578063aa522e211461035a578063b2429568146103cc57610087565b005b6100c2600480360360208110156100a05760006000fd5b81019080803569ffffffffffffffffffff1690602001909291905050506103ea565b6040518082815260200191505060405180910390f35b6100e061042a565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156101215780820151818401525b602081019050610105565b50505050905090810190601f16801561014e5780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b6101646104d4565b60405180806020018060200180602001848103845287818151815260200191508051906020019060200280838360005b838110156101b05780820151818401525b602081019050610194565b50505050905001848103835286818151815260200191508051906020019060200280838360005b838110156101f35780820151818401525b6020810190506101d7565b50505050905001848103825285818151815260200191508051906020019060200280838360005b838110156102365780820151818401525b60208101905061021a565b50505050905001965050505050505060405180910390f35b61027b600480360360208110156102655760006000fd5b8101908080359060200190929190505050610860565b604051808d69ffffffffffffffffffff1669ffffffffffffffffffff1681526020018c69ffffffffffffffffffff1669ffffffffffffffffffff1681526020018b81526020018a81526020018981526020018881526020018781526020018681526020018581526020018481526020018381526020018281526020019c5050505050505050505050505060405180910390f35b610316610949565b604051808274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6103a8600480360360408110156103715760006000fd5b8101908080359060200190929190803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190505050610979565b60405180848152602001838152602001828152602001935050505060405180910390f35b6103d4610ac9565b6040518082815260200191505060405180910390f35b6000600460005060008369ffffffffffffffffffff1669ffffffffffffffffffff168152602001908152602001600021600050549050610425565b919050565b606060016000508054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156104c55780601f1061049a576101008083540402835291602001916104c5565b820191906000526020600021905b8154815290600101906020018083116104a857829003601f168201915b505050505090506104d1565b90565b60606060606060606002600050546040519080825280602002602001820160405280156105105781602001602082028038833980820191505090505b50905060606002600050546040519080825280602002602001820160405280156105495781602001602082028038833980820191505090505b5090506060600a600260005054026040519080825280602002602001820160405280156105855781602001602082028038833980820191505090505b5090506000600090505b6002600050548110156108465760006003600050600083815260200190815260200160002160005090508060010160009054906101000a900469ffffffffffffffffffff1685838151811015156105e257fe5b9060200190602002019069ffffffffffffffffffff16908169ffffffffffffffffffff168152602001505080600101600a9054906101000a900469ffffffffffffffffffff16848381518110151561063657fe5b9060200190602002019069ffffffffffffffffffff16908169ffffffffffffffffffff16815260200150508060020160005054836000600a85020181518110151561067d57fe5b906020019060200201909081815260200150508060030160005054836001600a8502018151811015156106ac57fe5b906020019060200201909081815260200150508060050160005054836002600a8502018151811015156106db57fe5b906020019060200201909081815260200150508060060160005054836003600a85020181518110151561070a57fe5b906020019060200201909081815260200150508060070160005054836004600a85020181518110151561073957fe5b906020019060200201909081815260200150508060080160005054836005600a85020181518110151561076857fe5b906020019060200201909081815260200150508060090160005054836006600a85020181518110151561079757fe5b9060200190602002019090818152602001505080600a0160005054836007600a8502018151811015156107c657fe5b9060200190602002019090818152602001505080600b0160005054836008600a8502018151811015156107f557fe5b9060200190602002019090818152602001505080600c0160005054836009600a85020181518110151561082457fe5b90602001906020020190908181526020015050505b808060010191505061058f565b5082828295509550955050505061085b565050505b909192565b6000600060006000600060006000600060006000600060006000600360005060008f815260200190815260200160002160005090508060010160009054906101000a900469ffffffffffffffffffff1681600101600a9054906101000a900469ffffffffffffffffffff16826002016000505483600301600050548460050160005054856006016000505486600701600050548760080160005054886009016000505489600a01600050548a600b01600050548b600c01600050549c509c509c509c509c509c509c509c509c509c509c509c505061093a56505b91939597999b5091939597999b565b6000600060009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff169050610976565b90565b6000600060006003600050600086815260200190815260200160002160005060000160005060008574ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001908152602001600021600050600001600050546003600050600087815260200190815260200160002160005060000160005060008674ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001908152602001600021600050600101600050546003600050600088815260200190815260200160002160005060000160005060008774ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002160005060020160005054925092509250610ac2565b9250925092565b60006002600050549050610ad8565b9056fea165627a7a72305820cfca43c7925427996c49a7bd962403d3a965ca1482605c3b733ce92436491fbb0029',
);
