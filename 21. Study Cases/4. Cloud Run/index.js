const fastify = require("fastify")({ logger: true });
const { uploadImage } = require("./storage");

fastify.register(require("@fastify/multipart"));

fastify.post("/upload", async (request, reply) => {
  try {
    const data = await request.file();

    if (!data || data.mimetype.split("/")[0] !== "image") {
      return reply.status(400).send({ error: "Image file is required" });
    }

    const imageUrl = await uploadImage(data.file, data.filename);

    reply.send({ message: "Image uploaded successfully", imageUrl });
  } catch (err) {
    fastify.log.error(err);
    reply.status(500).send({ error: "Upload failed" });
  }
});

fastify.listen({ port: 8080, host: "0.0.0.0" }, (err) => {
  if (err) throw err;
  console.log("Server running on port 8080");
});
