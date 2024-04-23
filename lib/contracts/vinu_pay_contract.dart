import 'package:vite/vite.dart';

const vinuPayContract = Contract(
  contractAddress: 'vite_7dc291dfeb8a4157f98c9882de39d6c8afba5b3824c81d0738',
  abi: [
    {"inputs": [], "stateMutability": "nonpayable", "type": "constructor"},
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "string",
          "name": "txId",
          "type": "string"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "merchantAddress",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "payerAddress",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "InvoicePaid",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint48",
          "name": "nameId",
          "type": "uint48"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "oldOwnerAddress",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "newOwnerAddress",
          "type": "address"
        }
      ],
      "name": "NameTransferred",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "string",
          "name": "txId",
          "type": "string"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "merchantAddress",
          "type": "address"
        }
      ],
      "name": "NewInvoice",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "bytes32",
          "name": "role",
          "type": "bytes32"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "previousHolder",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "newHolder",
          "type": "address"
        }
      ],
      "name": "RoleHolderChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "name": "TreasuryWithdrawal",
      "type": "event"
    },
    {"stateMutability": "payable", "type": "fallback"},
    {
      "inputs": [],
      "name": "BASE_NAME_FEE",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "CONTRACT_TOKEN",
      "outputs": [
        {"internalType": "tokenId", "name": "", "type": "tokenId"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "NAME_MANAGER",
      "outputs": [
        {"internalType": "bytes32", "name": "", "type": "bytes32"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "SHORT_NAME_MULTIPLIER",
      "outputs": [
        {"internalType": "uint16", "name": "", "type": "uint16"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "TREASURY_OWNER",
      "outputs": [
        {"internalType": "bytes32", "name": "", "type": "bytes32"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "VERY_SHORT_NAME_MULTIPLIER",
      "outputs": [
        {"internalType": "uint16", "name": "", "type": "uint16"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "name", "type": "string"}
      ],
      "name": "_checkName",
      "outputs": [
        {"internalType": "bool", "name": "", "type": "bool"}
      ],
      "stateMutability": "pure",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint48", "name": "nameId", "type": "uint48"},
        {"internalType": "bool", "name": "shouldTrust", "type": "bool"}
      ],
      "name": "changeNameTrustStatus",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address payable",
          "name": "destination",
          "type": "address"
        },
        {"internalType": "uint256", "name": "amount", "type": "uint256"},
        {"internalType": "tokenId", "name": "txToken", "type": "tokenId"},
        {"internalType": "uint48", "name": "nameId", "type": "uint48"},
        {"internalType": "uint24", "name": "expireBlocks", "type": "uint24"}
      ],
      "name": "createInvoice",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "name", "type": "string"}
      ],
      "name": "getName",
      "outputs": [
        {
          "components": [
            {
              "internalType": "address",
              "name": "ownerAddress",
              "type": "address"
            },
            {"internalType": "string", "name": "name", "type": "string"},
            {"internalType": "bool", "name": "isTrusted", "type": "bool"},
            {"internalType": "uint48", "name": "nameId", "type": "uint48"}
          ],
          "internalType": "struct VitePay.Name",
          "name": "",
          "type": "tuple"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint48", "name": "nameId", "type": "uint48"}
      ],
      "name": "getNameById",
      "outputs": [
        {
          "components": [
            {
              "internalType": "address",
              "name": "ownerAddress",
              "type": "address"
            },
            {"internalType": "string", "name": "name", "type": "string"},
            {"internalType": "bool", "name": "isTrusted", "type": "bool"},
            {"internalType": "uint48", "name": "nameId", "type": "uint48"}
          ],
          "internalType": "struct VitePay.Name",
          "name": "",
          "type": "tuple"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getNameCount",
      "outputs": [
        {"internalType": "uint56", "name": "", "type": "uint56"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "nameHolderAddress",
          "type": "address"
        }
      ],
      "name": "getNamesByAddress",
      "outputs": [
        {"internalType": "uint48[]", "name": "", "type": "uint48[]"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "bytes32", "name": "roleId", "type": "bytes32"}
      ],
      "name": "getRoleHolder",
      "outputs": [
        {"internalType": "address", "name": "", "type": "address"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "txId", "type": "string"}
      ],
      "name": "getTransaction",
      "outputs": [
        {
          "components": [
            {
              "internalType": "address payable",
              "name": "destination",
              "type": "address"
            },
            {"internalType": "uint256", "name": "amount", "type": "uint256"},
            {"internalType": "uint48", "name": "nameId", "type": "uint48"},
            {"internalType": "uint48", "name": "expireBlock", "type": "uint48"},
            {"internalType": "tokenId", "name": "txToken", "type": "tokenId"},
            {"internalType": "uint8", "name": "status", "type": "uint8"}
          ],
          "internalType": "struct VitePay.Transaction",
          "name": "",
          "type": "tuple"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "getTransactionCount",
      "outputs": [
        {"internalType": "uint56", "name": "", "type": "uint56"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "string", "name": "name", "type": "string"}
      ],
      "name": "mintName",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "bytes32", "name": "roleId", "type": "bytes32"}
      ],
      "name": "renounceRole",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint48", "name": "nameId", "type": "uint48"},
        {"internalType": "address", "name": "newOwner", "type": "address"},
        {"internalType": "uint48", "name": "indexOnArray", "type": "uint48"}
      ],
      "name": "transferName",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "bytes32", "name": "roleId", "type": "bytes32"},
        {"internalType": "address", "name": "newRoleHolder", "type": "address"}
      ],
      "name": "transferRole",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "treasuryBalance",
      "outputs": [
        {"internalType": "uint256", "name": "", "type": "uint256"}
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {"internalType": "uint256", "name": "amount", "type": "uint256"},
        {
          "internalType": "address payable",
          "name": "destination",
          "type": "address"
        }
      ],
      "name": "withdrawFromTreasury",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {"stateMutability": "payable", "type": "receive"}
  ],
);
