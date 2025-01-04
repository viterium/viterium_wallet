import 'package:vite/contract.dart';

const vinuSwapContract = Contract(
  contractAddress: 'vite_570b31a282b4ebafcdbcbad9cc07747e0cc851f58c733fcc55',
  abi: [
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': 'address'
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "underlyingToken",
          'type': "tokenId"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingTokenAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingVinuAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingTokenTotal",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingVinuTotal",
          'type': "uint256"
        }
      ],
      'name': "AddLiquidity",
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': false,
          'internalType': 'address',
          'name': "newDAOAddress",
          'type': "address"
        }
      ],
      'name': "DAOAddressChange",
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': false,
          'internalType': "address",
          'name': "owner",
          'type': "address"
        }
      ],
      'name': 'NewOwner',
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': 'string',
          'name': "sbpName",
          'type': "string"
        }
      ],
      'name': "NewVote",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "token",
          'type': "tokenId"
        }
      ],
      'name': "PairCreated",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newFee",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newTokenCreationFee",
          'type': "uint256"
        }
      ],
      'name': "PairCreationFeeChange",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': "address"
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "underlyingToken",
          'type': "tokenId"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingTokenAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': 'uint256',
          'name': "underlyingViteAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingTokenTotal",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "underlyingViteTotal",
          'type': "uint256"
        }
      ],
      'name': "RemoveLiquidity",
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': "address"
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "fromTokenId",
          'type': "tokenId"
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "toTokenId",
          'type': "tokenId"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapFromAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapToAmount",
          'type': "uint256"
        }
      ],
      'name': "Swap",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newLPFee",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newDaoFee",
          'type': "uint256"
        }
      ],
      'name': "SwapFeeChange",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': "address"
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "fromTokenId",
          'type': "tokenId"
        },
        {
          'indexed': true,
          'internalType': "tokenId",
          'name': "toTokenId",
          'type': "tokenId"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapFromAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapToAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapTotal",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "swapTotalVINU",
          'type': "uint256"
        }
      ],
      'name': "SwapInternal",
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': "address"
        },
        {
          'indexed': false,
          'internalType': 'uint256',
          'name': "userDepositAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newUserBalance",
          'type': "uint256"
        }
      ],
      'name': "VINUDeposit",
      'type': "event"
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "addr",
          'type': 'address'
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "depositAmount",
          'type': "uint256"
        }
      ],
      'name': "VINURewardDeposit",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "addr",
          'type': "address"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "withdrawAamount",
          'type': 'uint256'
        }
      ],
      'name': "VINURewardWithdrawal",
      'type': 'event'
    },
    {
      'anonymous': false,
      'inputs': [
        {
          'indexed': true,
          'internalType': "address",
          'name': "userAddress",
          'type': "address"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "userWithdrawAmount",
          'type': "uint256"
        },
        {
          'indexed': false,
          'internalType': "uint256",
          'name': "newUserBalance",
          'type': "uint256"
        }
      ],
      'name': "VINUWithdrawal",
      'type': 'event'
    },
    {'anonymous': false, 'inputs': [], 'name': "VoteCancel", 'type': 'event'},
    {
      'inputs': [],
      'name': "DAO_ADDRESS",
      'outputs': [
        {'internalType': "address payable", 'name': '', 'type': 'address'}
      ],
      'stateMutability': "view",
      'type': "function"
    },
    {
      'inputs': [],
      'name': "NULL_TOKEN",
      'outputs': [
        {'internalType': "tokenId", 'name': '', 'type': "tokenId"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "PAIR_CREATION_FEE",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "TOKEN_CREATION_FEE",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "UINT256_MAX",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': 'VINU_TOKEN',
      'outputs': [
        {'internalType': "tokenId", 'name': '', 'type': "tokenId"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': 'VITE_TOKEN',
      'outputs': [
        {'internalType': "tokenId", 'name': '', 'type': "tokenId"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "string", 'name': "sbpName", 'type': "string"}
      ],
      'name': "VoteForSBP",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': 'function'
    },
    {
      'inputs': [],
      'name': "addLiquidity",
      'outputs': [],
      'stateMutability': 'payable',
      'type': 'function'
    },
    {
      'inputs': [],
      'name': 'burnfee',
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "cancelVote",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': "address payable",
          'name': "newAddress",
          'type': "address"
        }
      ],
      'name': "changeDAOAddress",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "uint256", 'name': "newFee", 'type': "uint256"},
        {
          'internalType': "uint256",
          'name': "tokenCreationFee",
          'type': "uint256"
        }
      ],
      'name': "changePairCreationFee",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': 'function'
    },
    {
      'inputs': [
        {'internalType': "uint256", 'name': 'lpFee', 'type': "uint256"},
        {'internalType': "uint256", 'name': "daoFee", 'type': "uint256"},
        {'internalType': "uint256", 'name': "burnFee", 'type': "uint256"}
      ],
      'name': "changeSwapFee",
      'outputs': [],
      'stateMutability': 'nonpayable',
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': "tokenId",
          'name': "underlyingToken",
          'type': "tokenId"
        }
      ],
      'name': "createNewPair",
      'outputs': [],
      'stateMutability': 'payable',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "daofee",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "depositRewardVINU",
      'outputs': [],
      'stateMutability': 'payable',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "depositVINU",
      'outputs': [],
      'stateMutability': 'payable',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': "token", 'type': "tokenId"}
      ],
      'name': "getLiquidityPool",
      'outputs': [
        {'internalType': "uint256", 'name': "total", 'type': "uint256"},
        {'internalType': "uint256", 'name': 'totalVINU', 'type': "uint256"},
        {'internalType': "uint256", 'name': 'k', 'type': "uint256"},
        {'internalType': "uint256", 'name': "tokenSupply", 'type': "uint256"},
        {'internalType': "tokenId", 'name': 'lpToken', 'type': "tokenId"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "address", 'name': "_address", 'type': "address"},
        {'internalType': "tokenId", 'name': "token", 'type': 'tokenId'}
      ],
      'name': "getLiquidityTokenBalance",
      'outputs': [
        {'internalType': "uint256", 'name': "lpBalance", 'type': "uint256"}
      ],
      'stateMutability': "view",
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': "from", 'type': "tokenId"},
        {'internalType': "tokenId", 'name': 'to', 'type': "tokenId"},
        {'internalType': "uint256", 'name': "amount", 'type': "uint256"}
      ],
      'name': "getOppositeQuote",
      'outputs': [
        {'internalType': "uint256", 'name': "returnAmount", 'type': "uint256"}
      ],
      'stateMutability': "view",
      'type': "function"
    },
    {
      'inputs': [],
      'name': "getOwner",
      'outputs': [
        {'internalType': "address", 'name': "ownerAddr", 'type': "address"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': "from", 'type': 'tokenId'},
        {'internalType': "tokenId", 'name': 'to', 'type': 'tokenId'},
        {'internalType': "uint256", 'name': "amount", 'type': "uint256"}
      ],
      'name': "getQuote",
      'outputs': [
        {'internalType': "uint256", 'name': "returnAmount", 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "address", 'name': 'addr', 'type': "address"}
      ],
      'name': "getVINUBalance",
      'outputs': [
        {'internalType': "uint256", 'name': "userBalance", 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': '', 'type': "tokenId"}
      ],
      'name': "lpTokenStorage",
      'outputs': [
        {'internalType': 'bool', 'name': "isReIssuable", 'type': 'bool'},
        {'internalType': "string", 'name': 'tokenName', 'type': 'string'},
        {'internalType': "string", 'name': "tokenSymbol", 'type': "string"},
        {'internalType': "uint256", 'name': "totalSupply", 'type': "uint256"},
        {'internalType': "uint256", 'name': "decimals", 'type': "uint256"},
        {'internalType': 'bool', 'name': "loaded", 'type': "bool"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [],
      'name': "lpfee",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': "view",
      'type': "function"
    },
    {
      'inputs': [],
      'name': "owner",
      'outputs': [
        {'internalType': "address", 'name': '', 'type': "address"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': "tokenId",
          'name': "underlyingToken",
          'type': "tokenId"
        },
        {'internalType': "uint256", 'name': "poolAmount", 'type': "uint256"}
      ],
      'name': "removeLiquidity",
      'outputs': [],
      'stateMutability': 'payable',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "address", 'name': '', 'type': "address"}
      ],
      'name': "rewardBalances",
      'outputs': [
        {'internalType': "uint256", 'name': '', 'type': "uint256"}
      ],
      'stateMutability': 'view',
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': "tokenId",
          'name': "underlyingTokenId",
          'type': "tokenId"
        }
      ],
      'name': "setLiquidityPoolProviderToken",
      'outputs': [],
      'stateMutability': 'payable',
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "address", 'name': "newOwner", 'type': "address"}
      ],
      'name': "setOwner",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': 'uint256',
          'name': "underlyingVinuAmount",
          'type': "uint256"
        }
      ],
      'name': "startLiquidityPool",
      'outputs': [],
      'stateMutability': 'payable',
      'type': 'function'
    },
    {
      'inputs': [
        {
          'internalType': "tokenId",
          'name': "underlyingTokenId",
          'type': "tokenId"
        },
        {'internalType': 'bool', 'name': "isReIssuable", 'type': 'bool'},
        {'internalType': "string", 'name': 'tokenName', 'type': 'string'},
        {'internalType': "string", 'name': "tokenSymbol", 'type': "string"},
        {'internalType': "uint256", 'name': "totalSupply", 'type': "uint256"},
        {'internalType': "uint256", 'name': "decimals", 'type': "uint256"}
      ],
      'name': "storeLPTokenDetails",
      'outputs': [],
      'stateMutability': 'nonpayable',
      'type': "function"
    },
    {
      'inputs': [
        {
          'internalType': "address payable",
          'name': "recipient",
          'type': "address"
        },
        {'internalType': "tokenId", 'name': "targetToken", 'type': "tokenId"},
        {
          'internalType': "uint256",
          'name': "minimumSwapAmount",
          'type': "uint256"
        }
      ],
      'name': 'swap',
      'outputs': [],
      'stateMutability': 'payable',
      'type': 'function'
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': '', 'type': "tokenId"}
      ],
      'name': "tokenPairs",
      'outputs': [
        {'internalType': 'bool', 'name': '', 'type': 'bool'}
      ],
      'stateMutability': 'view',
      'type': 'function'
    },
    {
      'inputs': [
        {'internalType': "tokenId", 'name': "token", 'type': "tokenId"}
      ],
      'name': "withdrawLiquidityToken",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    },
    {
      'inputs': [],
      'name': "withdrawRewardVINU",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    },
    {
      'inputs': [
        {'internalType': "uint256", 'name': 'amount', 'type': "uint256"}
      ],
      'name': "withdrawVINU",
      'outputs': [],
      'stateMutability': "nonpayable",
      'type': "function"
    }
  ],
);
