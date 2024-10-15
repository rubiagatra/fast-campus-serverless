const functions = require("@google-cloud/functions-framework");

functions.http("multiply", (req, res) => {
  const requestBody = req.body;

  const result = 2 * requestBody.input;
  const output = { multiplied: result };

  res.json(output);
});
