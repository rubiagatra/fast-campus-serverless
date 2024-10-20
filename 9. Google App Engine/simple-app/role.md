# Contoh

gcloud projects add-iam-policy-binding <nama-project> \ --member=serviceAccount:<nama-service-account> \
 --role=roles/appengine.deployer

gcloud projects add-iam-policy-binding <nama-project> \
 --member=serviceAccount:<nama-service-account> \
 --role=roles/storage.admin

# Project Kalian

gcloud projects add-iam-policy-binding $PROJECT_ID \
--member=serviceAccount:$PROJECT_ID@appspot.gserviceaccount.com \
 --role=roles/appengine.deployer

gcloud projects add-iam-policy-binding $PROJECT_ID \
 --member=serviceAccount:$PROJECT_ID@appspot.gserviceaccount.com \
 --role=roles/storage.admin
