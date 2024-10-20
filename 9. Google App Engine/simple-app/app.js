const fastify = require("fastify")({
  logger: true,
});

const ENVIRONTMENT = process.env.ENVIRONTMENT;
fastify.get("/", async () => {
  fastify.log.info("Simulasi Info Log");
  return { message: `Halo Fastify dari App Engine dari ${ENVIRONTMENT}` };
});

let requestCount = 0;

fastify.get("/error", async () => {
  fastify.log.error("Simulasi Error Log");
  throw new Error("Simulasi Error");
});

fastify.get("/random-error", async () => {
  requestCount++;

  // Check if it's the 20th request
  if (requestCount % 20 === 0) {
    fastify.log.error("Simulasi Random Error Log");
    throw new Error("Simulasi Random Error");
  }

  return { message: "Request successful" };
});

fastify.get("/delay", async () => {
  fastify.log.info("Simulasi Delay 5 Detik");
  await new Promise((r) => setTimeout(r, 5000));
  return { message: "Simulasi Delay 5 Detik" };
});

const PORT = process.env.PORT || 8080;
fastify.listen({ port: PORT, host: "0.0.0.0" }, (err) => {
  if (err) {
    fastify.log.error(err);
    process.exit(1);
  }
});
