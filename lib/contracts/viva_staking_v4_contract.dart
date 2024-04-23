import 'package:vite/vite.dart';

const vivaStakingV4Contract = Contract(
  contractAddress: 'vite_12e90482e9e13bbbeb1919e7993ffadd375f6b7aa483452cbf',
  abi: [
    {
      "constant": true,
      "inputs": [],
      "name": "getAllExtraPoolInfo",
      "outputs": [
        {"name": "packedIntegers", "type": "uint256[]"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
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
      "constant": false,
      "inputs": [
        {"name": "startBlock", "type": "uint256"},
        {"name": "endBlock", "type": "uint256"},
        {"name": "lockTime", "type": "uint256"},
        {"name": "minimumDeposit", "type": "uint256"},
        {"name": "maximumTotalStakingBalance", "type": "uint256"},
        {"name": "stakingTokenId", "type": "tokenId"}
      ],
      "name": "createStakingPool",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
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
        {"name": "paidOut", "type": "uint256"}
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
      "name": "getExtraPoolInfo",
      "outputs": [
        {"name": "minimumDeposit", "type": "uint256"},
        {"name": "maximumTotalStakingBalance", "type": "uint256"},
        {"name": "lockTime", "type": "uint256"}
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
        {"name": "rewardDebt", "type": "uint256"}
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
      "name": "emergencyWithdraw",
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
      "name": "EmergencyWithdraw",
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
      '60806040526004361061009d576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680630d6e79a21461009f5780631d0c7673146100ff578063443e6f501461014e578063499c7e31146101d25780634b2e2437146102c45780634c8d6129146103765780635c6cfcbe146103c7578063aa522e2114610413578063b24295681461047e5761009d565b005b6100a761049c565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b838110156100eb5780820151818401525b6020810190506100cf565b505050509050019250505060405180910390f35b610138600480360360208110156101165760006000fd5b81019080803569ffffffffffffffffffff1690602001909291905050506105b5565b6040518082815260200191505060405180910390f35b6101566105f5565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156101975780820151818401525b60208101905061017b565b50505050905090810190601f1680156101c45780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b6101da61069f565b60405180806020018060200180602001848103845287818151815260200191508051906020019060200280838360005b838110156102265780820151818401525b60208101905061020a565b50505050905001848103835286818151815260200191508051906020019060200280838360005b838110156102695780820151818401525b60208101905061024d565b50505050905001848103825285818151815260200191508051906020019060200280838360005b838110156102ac5780820151818401525b602081019050610290565b50505050905001965050505050505060405180910390f35b6102f1600480360360208110156102db5760006000fd5b81019080803590602001909291905050506109cd565b604051808b69ffffffffffffffffffff1669ffffffffffffffffffff1681526020018a69ffffffffffffffffffff1669ffffffffffffffffffff1681526020018981526020018881526020018781526020018681526020018581526020018481526020018381526020018281526020019a505050505050505050505060405180910390f35b6103a36004803603602081101561038d5760006000fd5b8101908080359060200190929190505050610a9c565b60405180848152602001838152602001828152602001935050505060405180910390f35b6103cf610aeb565b604051808274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6104616004803603604081101561042a5760006000fd5b8101908080359060200190929190803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190505050610b1b565b604051808381526020018281526020019250505060405180910390f35b610486610bff565b6040518082815260200191505060405180910390f35b606060606003600260005054026040519080825280602002602001820160405280156104d75781602001602082028038833980820191505090505b5090506000600090505b6002600050548110156105a75760006003600050600083815260200190815260200160002160005090508060080160005054836000600385020181518110151561052757fe5b906020019060200201909081815260200150508060090160005054836001600385020181518110151561055657fe5b906020019060200201909081815260200150508060070160005054836002600385020181518110151561058557fe5b90602001906020020190908181526020015050505b80806001019150506104e1565b50809150506105b256505b90565b6000600460005060008369ffffffffffffffffffff1669ffffffffffffffffffff1681526020019081526020016000216000505490506105f0565b919050565b606060016000508054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106905780601f1061066557610100808354040283529160200191610690565b820191906000526020600021905b81548152906001019060200180831161067357829003601f168201915b5050505050905061069c565b90565b60606060606060606002600050546040519080825280602002602001820160405280156106db5781602001602082028038833980820191505090505b50905060606002600050546040519080825280602002602001820160405280156107145781602001602082028038833980820191505090505b50905060606008600260005054026040519080825280602002602001820160405280156107505781602001602082028038833980820191505090505b5090506000600090505b6002600050548110156109b35760006003600050600083815260200190815260200160002160005090508060010160009054906101000a900469ffffffffffffffffffff1685838151811015156107ad57fe5b9060200190602002019069ffffffffffffffffffff16908169ffffffffffffffffffff168152602001505080600101600a9054906101000a900469ffffffffffffffffffff16848381518110151561080157fe5b9060200190602002019069ffffffffffffffffffff16908169ffffffffffffffffffff16815260200150508060020160005054836000600885020181518110151561084857fe5b906020019060200201909081815260200150508060030160005054836001600885020181518110151561087757fe5b90602001906020020190908181526020015050806005016000505483600260088502018151811015156108a657fe5b90602001906020020190908181526020015050806006016000505483600360088502018151811015156108d557fe5b9060200190602002019090818152602001505080600a0160005054836004600885020181518110151561090457fe5b9060200190602002019090818152602001505080600b0160005054836005600885020181518110151561093357fe5b9060200190602002019090818152602001505080600c0160005054836006600885020181518110151561096257fe5b9060200190602002019090818152602001505080600d0160005054836007600885020181518110151561099157fe5b90602001906020020190908181526020015050505b808060010191505061075a565b508282829550955095505050506109c8565050505b909192565b60006000600060006000600060006000600060006000600360005060008d815260200190815260200160002160005090508060010160009054906101000a900469ffffffffffffffffffff1681600101600a9054906101000a900469ffffffffffffffffffff16826002016000505483600301600050548460050160005054856006016000505486600a016000505487600b016000505488600c016000505489600d01600050549a509a509a509a509a509a509a509a509a509a5050610a8f56505b9193959799509193959799565b600060006000600060036000506000868152602001908152602001600021600050905080600801600050548160090160005054826007016000505493509350935050610ae456505b9193909250565b6000600060009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff169050610b18565b90565b600060006003600050600085815260200190815260200160002160005060000160005060008474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001908152602001600021600050600001600050546003600050600086815260200190815260200160002160005060000160005060008574ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000216000506001016000505491509150610bf8565b9250929050565b60006002600050549050610c0e565b9056fea165627a7a723058207ea7264ad23cc5562de4b5eb805c01656fcf55c02ddbe11474956da4e4d476d30029',
);
