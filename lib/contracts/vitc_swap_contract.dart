import 'package:vite/contract.dart';

const vitcSwapContract = Contract(
  contractAddress: 'vite_29ae0b9f951323b3bfe9bb8251bba2830eddacf51631630495',
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
          "internalType": "tokenId",
          "name": "token",
          "type": "tokenId"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "tokenAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "viteAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "tokenTotal",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "viteTotal",
          "type": "uint256"
        }
      ],
      "name": "AddLiquidity",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "addr",
          "type": "address"
        }
      ],
      "name": "DAOAddressChange",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "owner",
          "type": "address"
        }
      ],
      "name": "NewOwner",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "tokenId",
          "name": "token",
          "type": "tokenId"
        }
      ],
      "name": "NewPair",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "string",
          "name": "sbpName",
          "type": "string"
        }
      ],
      "name": "NewVote",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "fee",
          "type": "uint256"
        }
      ],
      "name": "PairCreationFeeChange",
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
          "internalType": "tokenId",
          "name": "token",
          "type": "tokenId"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "tokenAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "viteAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "tokenTotal",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "viteTotal",
          "type": "uint256"
        }
      ],
      "name": "RemoveLiquidity",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "_address",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "tokenId",
          "name": "fromToken",
          "type": "tokenId"
        },
        {
          "indexed": true,
          "internalType": "tokenId",
          "name": "toToken",
          "type": "tokenId"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "fromAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "toAmount",
          "type": "uint256"
        }
      ],
      "name": "Swap",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "lpfee",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "daofee",
          "type": "uint256"
        }
      ],
      "name": "SwapFeeChange",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "_address",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "tokenId",
          "name": "fromToken",
          "type": "tokenId"
        },
        {
          "indexed": true,
          "internalType": "tokenId",
          "name": "toToken",
          "type": "tokenId"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "fromAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "toAmount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "total",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "totalVITE",
          "type": "uint256"
        }
      ],
      "name": "SwapInternal",
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
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "newBalance",
          "type": "uint256"
        }
      ],
      "name": "VITEDeposit",
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
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "newBalance",
          "type": "uint256"
        }
      ],
      "name": "VITEWithdrawal",
      "type": "event"
    },
    {"anonymous": false, "inputs": [], "name": "VoteCancel", "type": "event"},
    {
      "inputs": [],
      "name": "DAO_ADDRESS",
      "outputs": [
        {"internalType": "address payable", "name": "", "type": "address"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "NULL_TOKEN",
      "outputs": [
        {"internalType": "tokenId", "name": "", "type": "tokenId"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "PAIR_CREATION_FEE",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "UINT256_MAX",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "VITE_TOKEN",
      "outputs": [
        {"internalType": "tokenId", "name": "", "type": "tokenId"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "sbpName", "type": "string"}
      ],
      "name": "VoteForSBP",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "addLiquidity",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "viteAmount", "type": "uint256"}
      ],
      "name": "addOriginalLiquidity",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "tokenId", "type": "tokenId"},
        {"internalType": "bool", "name": "isReIssuable", "type": "bool"},
        {"internalType": "string", "name": "tokenName", "type": "string"},
        {"internalType": "string", "name": "tokenSymbol", "type": "string"},
        {"internalType": "uint256", "name": "totalSupply", "type": "uint256"},
        {"internalType": "uint256", "name": "decimals", "type": "uint256"}
      ],
      "name": "cacheTokenInfo",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "", "type": "tokenId"}
      ],
      "name": "cached_tokens",
      "outputs": [
        {"internalType": "bool", "name": "isReIssuable", "type": "bool"},
        {"internalType": "string", "name": "tokenName", "type": "string"},
        {"internalType": "string", "name": "tokenSymbol", "type": "string"},
        {"internalType": "uint256", "name": "totalSupply", "type": "uint256"},
        {"internalType": "uint256", "name": "decimals", "type": "uint256"},
        {"internalType": "bool", "name": "fetched", "type": "bool"}
      ],
      "stateMutability": "view",
      "type": "function"
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
        {
          "internalType": "uint256",
          "name": "newFee",
          "type": "uint256",
          "value": "0"
        }
      ],
      "name": "changePairCreationFee",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "lpFee", "type": "uint256"},
        {"internalType": "uint256", "name": "daoFee", "type": "uint256"}
      ],
      "name": "changeSwapFee",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "createNewPair",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "daofee",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "depositVITE",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "from", "type": "tokenId"},
        {"internalType": "tokenId", "name": "to", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getCurrencyConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "from", "type": "tokenId"},
        {"internalType": "tokenId", "name": "to", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getInversedConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getInversedCurrencyConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getInversedVITEConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "getLiquidity",
      "outputs": [
        {"internalType": "uint256", "name": "total", "type": "uint256"},
        {"internalType": "uint256", "name": "totalVITE", "type": "uint256"},
        {"internalType": "uint256", "name": "k", "type": "uint256"},
        {"internalType": "uint256", "name": "tknSupply", "type": "uint256"},
        {"internalType": "tokenId", "name": "lpToken", "type": "tokenId"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "address", "name": "_address", "type": "address"},
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "getLiquidityTokenBalance",
      "outputs": [
        {"internalType": "uint256", "name": "lpBalance", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getOwner",
      "outputs": [
        {"internalType": "address", "name": "ownerAddr", "type": "address"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "address", "name": "addr", "type": "address"}
      ],
      "name": "getVITEBalance",
      "outputs": [
        {"internalType": "uint256", "name": "userBalance", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"},
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "getVITEConversion",
      "outputs": [
        {"internalType": "uint256", "name": "returnAmount", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "lpfee",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
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
        {"internalType": "tokenId", "name": "", "type": "tokenId"}
      ],
      "name": "pairs",
      "outputs": [
        {"internalType": "bool", "name": "", "type": "bool"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"},
        {"internalType": "uint256", "name": "poolAmount", "type": "uint256"}
      ],
      "name": "removeLiquidity",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address payable",
          "name": "newAddress",
          "type": "address"
        }
      ],
      "name": "setDAOAddress",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "setLiquidityToken",
      "outputs": [],
      "stateMutability": "payable",
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
        {
          "internalType": "address payable",
          "name": "recipient",
          "type": "address"
        },
        {"internalType": "tokenId", "name": "targetToken", "type": "tokenId"},
        {"internalType": "uint256", "name": "minimum", "type": "uint256"}
      ],
      "name": "swap",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "tokenId", "name": "token", "type": "tokenId"}
      ],
      "name": "withdrawLiquidityToken",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "amount", "type": "uint256"}
      ],
      "name": "withdrawVITE",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ],
);
