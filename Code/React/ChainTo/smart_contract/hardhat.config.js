// require("@nomicfoundation/hardhat-toolbox");

// /** @type import('hardhat/config').HardhatUserConfig */
// module.exports = {
//   solidity: "0.8.9",
// };

//
require('@nomiclabs/hardhat-waffle');

module.exports = {
  solidity: '0.8.9',
  networks: {
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/dNrKOvBDZiZtZG9TWeGugdoT-1MvKqzs',
      accounts: ['1835709bc4b3db5d0c5ff9221547e77c610116709f2e1b56329aff86e91e5210'],
    },
  },
};