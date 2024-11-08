const { getDataConnect, validateArgs } = require('firebase/data-connect');

const connectorConfig = {
  connector: 'default',
  service: 'data-connect',
  location: 'asia-southeast2'
};
exports.connectorConfig = connectorConfig;

