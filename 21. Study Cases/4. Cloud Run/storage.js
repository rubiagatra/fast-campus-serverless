const { Storage } = require("@google-cloud/storage");
require("dotenv").config();

const storage = new Storage({ projectId: process.env.GCP_PROJECT });
const bucket = storage.bucket(process.env.GCS_BUCKET);

async function uploadImage(fileStream, filename) {
  const blob = bucket.file(filename);
  const blobStream = blob.createWriteStream();

  return new Promise((resolve, reject) => {
    fileStream
      .pipe(blobStream)
      .on("finish", () => {
        resolve(
          `https://storage.googleapis.com/${process.env.GCS_BUCKET}/${blob.name}`,
        );
      })
      .on("error", reject);
  });
}

module.exports = { uploadImage };
