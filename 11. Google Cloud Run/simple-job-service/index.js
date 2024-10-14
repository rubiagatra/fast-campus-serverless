const jobTask = async () => {
  console.log("Starting Cloud Run Job");

  // Simulasi sebuah task
  await new Promise((resolve) => setTimeout(resolve, 5000));

  console.log("Cloud Run Job Finished");
};

jobTask()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error("Job Failed", err);
    process.exit(1);
  });
