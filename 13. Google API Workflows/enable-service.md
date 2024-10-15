gcloud services enable artifactregistry.googleapis.com cloudbuild.googleapis.com cloudfunctions.googleapis.com run.googleapis.com storage.googleapis.com workflows.googleapis.com

export SERVICE_ACCOUNT=workflows-sa
gcloud iam service-accounts create ${SERVICE_ACCOUNT}

gcloud projects add-iam-policy-binding PROJECT_ID \
 --member "serviceAccount:${SERVICE_ACCOUNT}@PROJECT_ID.iam.gserviceaccount.com" \
 --role "roles/run.invoker"
