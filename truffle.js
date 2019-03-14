var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "horse marriage stock comic expose enough before cancel assault explain master annual";


module.exports= {
  networks : {
    development : {
      host : 'localhost',
      port: 7545,
      network_id: '*',
      gas: 5000000

    }
  }
}

module.exports = {
  networks: {
    rinkeby: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/46aca4fee0ad46cda391112ed93dbca1")
      },
      network_id: '*',
      gas: 5000000

    }   
  }
};
