import 'package:vite/vite.dart';

const vivaStakingV5Contract = Contract(
  contractAddress: 'vite_565875bd872ae411111e03b3752871beb0901ff0d4b53b3f8e',
  abi: [
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "addr",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "pid",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "Claim",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "addr",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "pid",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "Deposit",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "addr",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "pid",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "EmergencyWithdraw",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "pid",
          "type": "uint256"
        }
      ],
      "name": "PoolCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "addr",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "pid",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "Withdraw",
      "type": "event"
    },
    {
      "inputs": [],
      "name": "cancelVote",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "startBlock", "type": "uint256"},
        {"internalType": "uint256", "name": "endBlock", "type": "uint256"},
        {"internalType": "uint256", "name": "lockTime", "type": "uint256"},
        {
          "internalType": "uint256",
          "name": "minimumDeposit",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "maximumTotalStakingBalance",
          "type": "uint256"
        },
        {"internalType": "tokenId", "name": "stakingTokenId", "type": "tokenId"}
      ],
      "name": "createStakingPool",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "deposit",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "emergencyWithdraw",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "fundStakingPool",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getAllExtraPoolInfo",
      "outputs": [
        {
          "internalType": "uint256[]",
          "name": "packedIntegers",
          "type": "uint256[]"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getAllPoolInfo",
      "outputs": [
        {
          "internalType": "tokenId[]",
          "name": "stakingTokenIds",
          "type": "tokenId[]"
        },
        {
          "internalType": "tokenId[]",
          "name": "rewardTokenIds",
          "type": "tokenId[]"
        },
        {
          "internalType": "uint256[]",
          "name": "packedIntegers",
          "type": "uint256[]"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "getExtraPoolInfo",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "minimumDeposit",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "maximumTotalStakingBalance",
          "type": "uint256"
        },
        {"internalType": "uint256", "name": "lockTime", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getOwner",
      "outputs": [
        {"internalType": "address", "name": "_owner", "type": "address"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getPoolCount",
      "outputs": [
        {"internalType": "uint256", "name": "pool_count", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "getPoolInfo",
      "outputs": [
        {
          "internalType": "tokenId",
          "name": "stakingTokenId",
          "type": "tokenId"
        },
        {"internalType": "tokenId", "name": "rewardTokenId", "type": "tokenId"},
        {
          "internalType": "uint256",
          "name": "totalStakingBalance",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "totalRewardBalance",
          "type": "uint256"
        },
        {"internalType": "uint256", "name": "startBlock", "type": "uint256"},
        {"internalType": "uint256", "name": "endBlock", "type": "uint256"},
        {
          "internalType": "uint256",
          "name": "latestRewardBlock",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "rewardPerPeriod",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "rewardPerToken",
          "type": "uint256"
        },
        {"internalType": "uint256", "name": "paidOut", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"},
        {"internalType": "address", "name": "addr", "type": "address"}
      ],
      "name": "getUserInfo",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "stakingBalance",
          "type": "uint256"
        },
        {"internalType": "uint256", "name": "rewardDebt", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getVote",
      "outputs": [
        {"internalType": "string", "name": "last_vote", "type": "string"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "getVotingReward",
      "outputs": [
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "owner",
      "outputs": [
        {"internalType": "address", "name": "", "type": "address"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "name": "pools",
      "outputs": [
        {
          "internalType": "tokenId",
          "name": "stakingTokenId",
          "type": "tokenId"
        },
        {"internalType": "tokenId", "name": "rewardTokenId", "type": "tokenId"},
        {
          "internalType": "uint256",
          "name": "totalStakingBalance",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "totalRewardBalance",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "currentRewardBalance",
          "type": "uint256"
        },
        {"internalType": "uint256", "name": "startBlock", "type": "uint256"},
        {"internalType": "uint256", "name": "endBlock", "type": "uint256"},
        {"internalType": "uint256", "name": "lockTime", "type": "uint256"},
        {
          "components": [
            {
              "internalType": "uint256",
              "name": "minimumDeposit",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "maximumTotalStakingBalance",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "latestRewardBlock",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "rewardPerPeriod",
              "type": "uint256"
            },
            {
              "internalType": "uint256",
              "name": "rewardPerToken",
              "type": "uint256"
            },
            {"internalType": "uint256", "name": "paidOut", "type": "uint256"}
          ],
          "internalType": "struct StakingPools.PaidOutInfo",
          "name": "paidInfo",
          "type": "tuple"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "sbpName", "type": "string"}
      ],
      "name": "sendVote",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "address", "name": "newOwner", "type": "address"}
      ],
      "name": "setOwner",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "withdraw",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "PoolId", "type": "uint256"}
      ],
      "name": "withdrawDust",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "withdrawVotingReward",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {"stateMutability": "payable", "type": "receive"}
  ],
  offchainCode: '',
);
