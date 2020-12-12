module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "172.17.107.33",
      port: 7545,
      network_id: "5777" // Match any network id
    },
    develop: {
      port: 8545
    }
  }
};
