const fastify = require("fastify")({ logger: true });

fastify.post("/", async (request, reply) => {
  const content = request.body;

  if (!content || typeof content.input !== "number") {
    return reply.status(400).send("Invalid input. Expected a number.");
  }

  const input = parseFloat(content.input);
  const flooredValue = Math.floor(input);

  return reply.send(flooredValue.toString());
});

const start = async () => {
  try {
    await fastify.listen({ port: 8080, host: "0.0.0.0" });
    fastify.log.info("Service Started...");
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();
