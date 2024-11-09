const fastify = require("fastify")();

fastify.get("/users", async (request, reply) => {
  try {
    reply.send({ success: true });
  } catch (err) {
    reply.status(500).send({ success: false, error: "Database Query Error" });
  }
});

const start = async () => {
  try {
    await fastify.listen({ host: "0.0.0.0", port: 8080 });
    console.log("Server Listening on port 8080");
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

start();
