# Contoh

gcloud projects add-iam-policy-binding <nama-project> \ --member=serviceAccount:<nama-service-account> \
 --role=roles/appengine.deployer

gcloud projects add-iam-policy-binding <nama-project> \
 --member=serviceAccount:<nama-service-account> \
 --role=roles/storage.admin

# Project Kalian

gcloud projects add-iam-policy-binding fast-campus-serverless \
--member=serviceAccount:fast-campus-serverless@appspot.gserviceaccount.com \
 --role=roles/appengine.deployer

gcloud projects add-iam-policy-binding fast-campus-serverless \
 --member=serviceAccount:fast-campus-serverless@appspot.gserviceaccount.com \
 --role=roles/storage.admin
