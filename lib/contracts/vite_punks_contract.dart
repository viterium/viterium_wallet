import 'package:vite/vite.dart';

const vitePunksContract = Contract(
  contractAddress: 'vite_fd06f4ef9a32fcabcdcae1857c1cab18b496ef1eafd1b4edc1',
  abi: [
    {
      "constant": true,
      "inputs": [
        {"name": "_punkId", "type": "uint256"}
      ],
      "name": "getBid",
      "outputs": [
        {"name": "hasBid", "type": "bool"},
        {"name": "bidder", "type": "address"},
        {"name": "amount", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"}
      ],
      "name": "cancelBid",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"}
      ],
      "name": "cancelOffer",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"}
      ],
      "name": "buy",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getBaseUrl",
      "outputs": [
        {"name": "_baseUrl", "type": "string"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_punkId", "type": "uint256"}
      ],
      "name": "getOffer",
      "outputs": [
        {"name": "isForSale", "type": "bool"},
        {"name": "seller", "type": "address"},
        {"name": "minAmount", "type": "uint256"},
        {"name": "onlySellTo", "type": "address"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_owner", "type": "address"},
        {"name": "_index", "type": "uint256"}
      ],
      "name": "tokenOfOwnerByIndex",
      "outputs": [
        {"name": "", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [],
      "name": "mint",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"},
        {"name": "minPrice", "type": "uint256"}
      ],
      "name": "acceptBid",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_owner", "type": "address"}
      ],
      "name": "balanceOf",
      "outputs": [
        {"name": "", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getDeveloper",
      "outputs": [
        {"name": "", "type": "address"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"},
        {"name": "minSalePrice", "type": "uint256"}
      ],
      "name": "offer",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "totalSupply",
      "outputs": [
        {"name": "", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_baseUrl", "type": "string"}
      ],
      "name": "setBaseUrl",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_started", "type": "bool"}
      ],
      "name": "setMarketStarted",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_tokenId", "type": "uint256"}
      ],
      "name": "tokenURI",
      "outputs": [
        {"name": "", "type": "string"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_type", "type": "uint8"},
        {"name": "_value", "type": "uint256"}
      ],
      "name": "setPrice",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_owner", "type": "address"}
      ],
      "name": "getTokensOf",
      "outputs": [
        {"name": "", "type": "uint256[]"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"}
      ],
      "name": "enterBid",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getMarketInfo",
      "outputs": [
        {"name": "market_started", "type": "bool"},
        {"name": "mints_remaining", "type": "uint256"},
        {"name": "mint_price", "type": "uint256"},
        {"name": "action_price", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "punkId", "type": "uint256"},
        {"name": "minSalePrice", "type": "uint256"},
        {"name": "toAddress", "type": "address"}
      ],
      "name": "offerToAddress",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_developer", "type": "address"}
      ],
      "name": "setDeveloper",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_refId", "type": "uint16"}
      ],
      "name": "getMappedIndex",
      "outputs": [
        {"name": "", "type": "uint256"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_tokenId", "type": "uint256"}
      ],
      "name": "ownerOf",
      "outputs": [
        {"name": "", "type": "address"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_indices", "type": "uint16[]"},
        {"name": "_startIndex", "type": "uint16"}
      ],
      "name": "setMappedIndices",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": false, "name": "from", "type": "address"},
        {"indexed": false, "name": "to", "type": "address"},
        {"indexed": true, "name": "token", "type": "uint256"}
      ],
      "name": "Transfer",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": true, "name": "eventType", "type": "uint8"},
        {"indexed": false, "name": "value", "type": "uint256"},
        {"indexed": false, "name": "timestamp", "type": "uint256"}
      ],
      "name": "MarketChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": true, "name": "eventType", "type": "uint8"},
        {"indexed": true, "name": "punkId", "type": "uint256"},
        {"indexed": false, "name": "amount", "type": "uint256"},
        {"indexed": false, "name": "fromAddress", "type": "address"},
        {"indexed": false, "name": "toAddress", "type": "address"},
        {"indexed": false, "name": "timestamp", "type": "uint256"}
      ],
      "name": "PunkChanged",
      "type": "event"
    }
  ],
  offchainCode:
      '6080604052600436106100be576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063035d181c146100c05780631b48faa51461014357806329d3bb15146101c75780632f7d2e1b1461027f5780634a3a0f33146102e35780634a6200d11461033d57806371ad2a6a1461038957806385d0f5ca146103a757806398c1a03414610450578063a31e4c5b146104ec578063cbb5351714610523578063d95f22b21461056a576100be565b005b6100ed600480360360208110156100d75760006000fd5b81019080803590602001909291905050506105db565b60405180841515151581526020018374ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001828152602001935050505060405180910390f35b61014b610652565b6040518080602001828103825283818151815260200191508051906020019080838360005b8381101561018c5780820151818401525b602081019050610170565b50505050905090810190601f1680156101b95780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b6101f4600480360360208110156101de5760006000fd5b81019080803590602001909291905050506106fa565b60405180851515151581526020018474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1681526020018381526020018274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200194505050505060405180910390f35b6102cd600480360360408110156102965760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff1690602001909291908035906020019092919050505061079b565b6040518082815260200191505060405180910390f35b610327600480360360208110156102fa5760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff16906020019092919050505061080e565b6040518082815260200191505060405180910390f35b61034561082b565b604051808274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b61039161085b565b6040518082815260200191505060405180910390f35b6103d4600480360360208110156103be5760006000fd5b810190808035906020019092919050505061086d565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156104155780820151818401525b6020810190506103f9565b50505050905090810190601f1680156104425780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b610494600480360360208110156104675760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190505050610956565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b838110156104d85780820151818401525b6020810190506104bc565b505050509050019250505060405180910390f35b6104f46109fd565b604051808515151515815260200184815260200183815260200182815260200194505050505060405180910390f35b6105546004803603602081101561053a5760006000fd5b81019080803561ffff169060200190929190505050610a4e565b6040518082815260200191505060405180910390f35b610597600480360360208110156105815760006000fd5b8101908080359060200190929190505050610ab2565b604051808274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6000600060006000600e600050600086815260200190815260200160002160005090508060000160009054906101000a900460ff168160020160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff1682600301600050549350935093505061064b56505b9193909250565b606060036000508054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156106ed5780601f106106c2576101008083540402835291602001916106ed565b820191906000526020600021905b8154815290600101906020018083116106d057829003601f168201915b5050505050905080505b90565b60006000600060006000600d600050600087815260200190815260200160002160005090508060000160009054906101000a900460ff168160020160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff1682600301600050548360040160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff1694509450945094505061079456505b9193509193565b6000600160005060008474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001908152602001600021600050828154811015156107f157fe5b906000526020600021900160005b50549050610808565b92915050565b600061081f82610acf63ffffffff16565b9050610826565b919050565b6000600760009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff169050610858565b90565b6000600560005054905061086a565b90565b6060600360005061088383610b2b63ffffffff16565b60405160200180838054600181600116156101000203166002900480156108e15780601f106108bf5761010080835404028352918201916108e1565b820191906000526020600021905b8154815290600101906020018083116108cd575b505082805190602001908083835b60208310151561091557805182525b6020820191506020810190506020830392506108ef565b6001836020036101000a038019825116818451168082178552505050505050905001925050506040516020818303038152906040529050610951565b919050565b6060600160005060008374ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000216000508054806020026020016040519081016040528092919081815260200182805480156109ec57602002820191906000526020600021905b8160005054815260200190600101908083116109d5575b505050505090506109f8565b919050565b6000600060006000600b60009054906101000a900460ff16610a2f600560005054612710610c9990919063ffffffff16565b6008600050546009600050549350935093509350610a48565b90919293565b600060011515600b60009054906101000a900460ff1615151415610a755760009050610aad565b600a60005060008361ffff1661ffff16815260200190815260200160002160009054906101000a900461ffff1661ffff169050610aad565b919050565b6000610ac382610cc263ffffffff16565b9050610aca565b919050565b6000600074ffffffffffffffffffffffffffffffffffffffffff168274ffffffffffffffffffffffffffffffffffffffffff1614151515610b105760006000fd5b610b1f82610d7e63ffffffff16565b9050610b26565b919050565b60606000821415610b7757604060405190810160405280600181526020017f30000000000000000000000000000000000000000000000000000000000000008152602001509050610c94565b600082905060005b600082141515610ba7578080600101915050600a82811515610b9d57fe5b0491508150610b7f565b6060816040519080825280601f01601f191660200182016040528015610bdc5781602001600182028038833980820191505090505b509050600060018303905085935083505b600084141515610c8457600a84811515610c0357fe5b066030017f010000000000000000000000000000000000000000000000000000000000000002828280600190039350815181101515610c3e57fe5b9060200101907effffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916908160001a905350600a84811515610c7a57fe5b0493508350610bed565b81945050505050610c9456505050505b919050565b6000828211151515610cab5760006000fd5b6000828403905080915050610cbc56505b92915050565b6000600074ffffffffffffffffffffffffffffffffffffffffff166000600050600084815260200190815260200160002160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1614151515610d3a5760006000fd5b6000600050600083815260200190815260200160002160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff169050610d79565b919050565b6000600160005060008374ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff168152602001908152602001600021600050805490509050610dd2565b91905056fea165627a7a7230582031c023c47456989a4648cfd6102156611ac0be7b1c5f989ac2aab32f1b8620920029',
);
