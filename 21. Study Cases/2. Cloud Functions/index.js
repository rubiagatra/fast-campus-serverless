const { Storage } = require("@google-cloud/storage");
const { BigQuery } = require("@google-cloud/bigquery");

const storage = new Storage();
const bigquery = new BigQuery();

exports.loadBigQueryFromAvro = async (event, context) => {
  try {
    if (!event || !event.bucket) {
      throw new Error("Invalid Even Data. Missing Bucket Information");
    }

    const bucketName = event.bucket;
    const filename = event.name;

    const datasetId = "loadavro";
    const tableId = filename.replace(".avro", "");

    const options = {
      sourceFormat: "AVRO",
      autodetect: true,
      createDisposition: "CREATE_IF_NEEDED",
      writeDisposition: "WRITE_TRUNCATE",
    };

    const loadJob = bigquery
      .dataset(datasetId)
      .table(tableId)
      .load(storage.bucket(bucketName).file(filename), options);

    await loadJob;
    console.log(`Job ${loadJob.id} completed. Created Table ${tableId}`);
  } catch (error) {
    console.error("Error loading data into BigQuery");
    throw error;
  }
};
