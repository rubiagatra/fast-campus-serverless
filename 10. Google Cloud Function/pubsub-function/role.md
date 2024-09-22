gcloud iam service-accounts create pubsub-service-account \
 --display-name="Pub/Sub Service Account"

gcloud projects add-iam-policy-binding [PROJECT_ID] \
 --member="serviceAccount:pubsub-service-account@[PROJECT_ID].iam.gserviceaccount.com" \
 --role="roles/iam.serviceAccountTokenCreator"
