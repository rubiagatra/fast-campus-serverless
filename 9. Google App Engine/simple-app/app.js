const fastify = require("fastify")({
  logger: true,
});

const ENVIRONTMENT = process.env.ENVIRONTMENT;
fastify.get("/", async () => {
  fastify.log.info("Simulasi Info Log");
  return { message: `Halo Fastify dari App Engine dari ${ENVIRONTMENT}` };
});

fastify.get("/error", async () => {
  fastify.log.error("Simulasi Error Log");
  throw new Error("Simulasi Error");
});

fastify.get("/delay", async () => {
  fastify.log.info("Simulasi Delay 2 Detik");
  await new Promise((r) => setTimeout(r, 2000));
  return { message: "Simulasi Delay 2 Detik" };
});

const PORT = process.env.PORT || 8080;
fastify.listen({ port: PORT, host: "0.0.0.0" }, (err) => {
  if (err) {
    fastify.log.error(err);
    process.exit(1);
  }
});
