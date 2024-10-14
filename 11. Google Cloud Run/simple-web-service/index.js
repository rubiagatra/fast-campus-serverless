const fastify = require("fastify")({ logger: true });

fastify.get("/", async () => {
  return { message: "Halo dari Cloud Run" };
});

fastify.get("/error", async () => {
  fastify.log.error("Simulasi Error");
  throw new Error("Simulasi Error");
});

fastify.get("/delay", async () => {
  fastify.log.info("Simulasi 2 Detik");
  await new Promise((r) => setTimeout(r, 2000));
  return { message: "Simulasi Delay 2 Detik" };
});

const start = async () => {
  try {
    await fastify.listen({ port: process.env.PORT || 8080, host: "0.0.0.0" });
    console.log(
      `Server running at http://0.0.0.0:${process.env.PORT || 808080}`,
    );
  } catch (err) {
    fastify.log.error(err);
    process.exit(1);
  }
};

async function closeGracefully(signal) {
  console.log(`Receive Signal: ${signal}`);

  await fastify.close();
  process.kill(process.pid, signal);
}

process.once("SIGINT", closeGracefully);
process.once("SIGTERM", closeGracefully);

start();
