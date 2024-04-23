import 'package:vite/vite.dart';

const vitensContract = Contract(
  contractAddress: 'vite_1077691249858a325a4387fa77a203e494d08167fa6234bc01',
  abi: [
    {
      "constant": true,
      "inputs": [
        {"name": "_address", "type": "address"},
        {"name": "_slot", "type": "uint8"}
      ],
      "name": "getNameBySlot",
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
        {"name": "_recipient", "type": "address"},
        {"name": "_slotId", "type": "uint8"}
      ],
      "name": "transfer",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_newOwner", "type": "address"}
      ],
      "name": "treasury_changeOwner",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_address", "type": "address"}
      ],
      "name": "getTotalNamesOfAddress",
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
        {"name": "_name", "type": "string"}
      ],
      "name": "mint",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [],
      "name": "getTotalMints",
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
        {"name": "_slotId", "type": "uint8"},
        {"name": "_tagId", "type": "uint8"},
        {"name": "_data", "type": "bytes32"}
      ],
      "name": "editTag",
      "outputs": [],
      "payable": true,
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "constant": false,
      "inputs": [
        {"name": "_amount", "type": "uint256"}
      ],
      "name": "treasury_Withdrawal",
      "outputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_vnsAddress", "type": "string"}
      ],
      "name": "resolveAddress",
      "outputs": [
        {"name": "", "type": "address"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "constant": true,
      "inputs": [
        {"name": "_address", "type": "address"},
        {"name": "_slot", "type": "uint8"}
      ],
      "name": "getTagsOfNameBySlot",
      "outputs": [
        {"name": "", "type": "bytes32[]"}
      ],
      "payable": false,
      "stateMutability": "view",
      "type": "offchain"
    },
    {
      "inputs": [],
      "payable": false,
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {"payable": true, "stateMutability": "payable", "type": "fallback"},
    {
      "anonymous": false,
      "inputs": [
        {"indexed": false, "name": "_minter", "type": "address"},
        {"indexed": false, "name": "_name", "type": "string"}
      ],
      "name": "Mint",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": false, "name": "_from", "type": "address"},
        {"indexed": false, "name": "_to", "type": "address"},
        {"indexed": false, "name": "_name", "type": "string"}
      ],
      "name": "Transfer",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {"indexed": false, "name": "_name", "type": "string"}
      ],
      "name": "Change",
      "type": "event"
    }
  ],
  offchainCode:
      '608060405260043610610071576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680630532e9a41461007357806332876eb8146101405780637a5c56f41461019a578063b109ad07146101b8578063e98ba3831461027957610071565b005b6100c46004803603604081101561008a5760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190803560ff169060200190929190505050610322565b6040518080602001828103825283818151815260200191508051906020019080838360005b838110156101055780820151818401525b6020810190506100e9565b50505050905090810190601f1680156101325780820380516001836020036101000a031916815260200191505b509250505060405180910390f35b610184600480360360208110156101575760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190505050610439565b6040518082815260200191505060405180910390f35b6101a2610492565b6040518082815260200191505060405180910390f35b610235600480360360208110156101cf5760006000fd5b81019080803590602001906401000000008111156101ed5760006000fd5b8201836020820111156102005760006000fd5b803590602001918460018302840111640100000000831117156102235760006000fd5b909192939090919293905050506104a4565b604051808274ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200191505060405180910390f35b6102ca600480360360408110156102905760006000fd5b81019080803574ffffffffffffffffffffffffffffffffffffffffff169060200190929190803560ff1690602001909291905050506104ff565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b8381101561030e5780820151818401525b6020810190506102f2565b505050509050019250505060405180910390f35b6060600260005060008474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000216000508260ff1681548110151561037b57fe5b906000526020600021906002020160005b506000016000508054600181600116156101000203166002900480601f0160208091040260200160405190810160405280929190818152602001828054600181600116156101000203166002900480156104275780601f106103fc57610100808354040283529160200191610427565b820191906000526020600021905b81548152906001019060200180831161040a57829003601f168201915b50505050509050610433565b92915050565b6000600260005060008374ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002160005080549050905061048d565b919050565b600060016000505490506104a1565b90565b600060036000508383604051808383808284378083019250505092505050908152602001604051809103902160009054906101000a900474ffffffffffffffffffffffffffffffffffffffffff1690506104f9565b92915050565b6060600260005060008474ffffffffffffffffffffffffffffffffffffffffff1674ffffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000216000508260ff1681548110151561055857fe5b906000526020600021906002020160005b506001016000508054806020026020016040519081016040528092919081815260200182805480156105c157602002820191906000526020600021905b816000505460001916815260200190600101908083116105a6575b505050505090506105cd565b9291505056fea165627a7a72305820bf5c231fab0c4ee88898e0efae688160b6f50c12329bf196baa2349eed4dc6380029',
);
