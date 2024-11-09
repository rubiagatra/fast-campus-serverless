const knex = require("knex");
require("dotenv").config();

module.exports = knex({
  client: "pg",
  connection: {
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
    host: `/cloudsql/${process.env.INSTANCE_CONNECTION_NAME}`,
    // NOTE: For using Cloud SQL Proxy
    // host: "localhost",
    // port: 5432,
  },
  migration: {
    directory: "./migrations",
  },
});
