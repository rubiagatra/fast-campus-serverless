const functions = require("@google-cloud/functions-framework");

functions.http("randomGen", (_, res) => {
  const randumNum = Math.floor(Math.random() * 100) + 1;
  const output = { random: randumNum };
  res.json(output);
});
