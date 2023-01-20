# lab 3.2

## 1.Using gsutil:
### Create 3 buckets. & Enable Versioning for them.  
![image](https://user-images.githubusercontent.com/28235504/213775124-3d4aac1b-6d51-420b-a5b8-a16fe8941271.png)
![image](https://user-images.githubusercontent.com/28235504/213775770-26fa3409-7c28-4dc4-9e6c-8127805259fa.png)

### Upload a file into bucket-1 then copy it from bucket-1 into bucket-2 & bucket-3. 
![image](https://user-images.githubusercontent.com/28235504/213776482-eae33621-bf54-4b91-b7d4-ce40cf86039b.png)
![image](https://user-images.githubusercontent.com/28235504/213776719-b6897417-8e26-4ed6-84d9-54666279ff1f.png)

### Delete the file from bucket-1 
![image](https://user-images.githubusercontent.com/28235504/213776876-5e8186a0-70d3-4501-9269-59e061a73716.png)
![image](https://user-images.githubusercontent.com/28235504/213777012-9228f2d5-082a-41e0-b1f1-083e3f147215.png)


## 2.Host a static website on a standard public GCS bucket.
![image](https://user-images.githubusercontent.com/28235504/213772141-429eda0c-1779-4ff8-bac1-e693dc969809.png)
![image](https://user-images.githubusercontent.com/28235504/213801953-d991890b-80cb-475b-bc51-a2a08db702df.png)
![image](https://user-images.githubusercontent.com/28235504/213802094-4bf8f572-fd10-4b9e-a1e8-93c9d2ee0cb5.png)
![image](https://user-images.githubusercontent.com/28235504/213802543-41351ea6-5bd7-4c72-a9e1-dada6a3ca806.png)
![image](https://user-images.githubusercontent.com/28235504/213802704-4d56e770-05c6-4bd9-ba06-bcd0e958974c.png)


## 3.Deploy MySQL private instance and connect to it then create a new database.
![image](https://user-images.githubusercontent.com/28235504/213794278-4b6c8031-afc2-47dc-84c7-064213bd1c1f.png)
![image](https://user-images.githubusercontent.com/28235504/213794434-4c8a432a-ebbf-4163-83c9-aa57762e2167.png)
![image](https://user-images.githubusercontent.com/28235504/213796975-9b56f751-887e-4b8b-b37c-a809f379f035.png)
![image](https://user-images.githubusercontent.com/28235504/213797641-c86c5b6d-e84c-45a7-b384-10856dc599b7.png)
![image](https://user-images.githubusercontent.com/28235504/213805027-01cc4bab-1adc-4f08-a93c-ba500b3da8e9.png)

------------------------
# Lab 3.3

## 1. Using gcloud & Docker:
### - Configure Docker & gcloud to work with GCR of your project.
![image](https://user-images.githubusercontent.com/28235504/213688321-e48b281c-8012-47f8-80a5-8683de594b5e.png)

### - Push Nginx docker image to GCR (make the image private).
```
gcloud builds submit is a command in the Google Cloud SDK that allows you to submit a build to Google Cloud Build. It is used to build and test your code, create images, and deploy your applications
```
![image](https://user-images.githubusercontent.com/28235504/213697070-3fad418b-d037-4c83-9079-db40e585aaac.png)
![image](https://user-images.githubusercontent.com/28235504/213697481-bbe21af4-c9e8-4e95-90d7-d4942a5e8009.png)
![image](https://user-images.githubusercontent.com/28235504/213697966-e63145db-2d41-4a0e-9b9d-363d1d4eaa61.png)
![image](https://user-images.githubusercontent.com/28235504/213710693-5e75e423-8b4a-455f-9b17-c1c6331b0c50.png)
---------------
![image](https://user-images.githubusercontent.com/28235504/213721236-3db3cb71-d1ea-4e23-956e-3f6cff089e38.png)
-------------------------
![image](https://user-images.githubusercontent.com/28235504/213717440-4fc7b49a-3c92-483d-a450-96c80f9f8b02.png)

### - Pull this image into a k8s setup or on a VM (hint: attach a SA on ur vm or gke with correct iam role).
![image](https://user-images.githubusercontent.com/28235504/213697128-1905c5c8-a9e0-4728-899f-534c7f54aa40.png)   
    
## 2. Using Cloud Functions:
- Create a Function that runs whenever a file is uploaded to a cloud storage bucket.
![image](https://user-images.githubusercontent.com/28235504/213740898-394d5f0d-28cb-42c9-a692-d27ed9cc1eb5.png)
![image](https://user-images.githubusercontent.com/28235504/213741155-9baeb209-4939-4220-bf03-c3be4a291b91.png)
![image](https://user-images.githubusercontent.com/28235504/213741209-b2248f6a-23d1-4dc3-9bc5-64a62f58cbef.png)

## 3. Using Cloud Run: 
### - Run a pre-built docker image (pulled from GCR).
![image](https://user-images.githubusercontent.com/28235504/213755196-b064fcb2-b336-4955-b7ca-4ed33018e980.png)

### - Build and Run any sample app
![image](https://user-images.githubusercontent.com/28235504/213765838-943bba31-74b7-4364-9598-9af627a20016.png)
![image](https://user-images.githubusercontent.com/28235504/213765961-876091d8-1006-49e5-bd97-ca2b1abf8dbe.png)
![image](https://user-images.githubusercontent.com/28235504/213767129-f8d6bd42-780d-41db-a82e-c01fcda4d60f.png)
![image](https://user-images.githubusercontent.com/28235504/213766048-11640bd6-5fa0-4779-bd18-7a8d021b8cf1.png)
# $code
```
# Clone the sample app repository
git clone https://github.com/GoogleCloudPlatform/nodejs-docs-samples.git

# Change directory
cd nodejs-docs-samples/run/helloworld

# Build and push the container image to Container Registry
gcloud builds submit --tag gcr.io/iti-makarios/helloworld

# Deploy the container image to Cloud Run
gcloud run deploy helloworld --image gcr.io/iti-makarios/helloworld --platform managed

```
--------------------------------------
    
## 4.Using App Engine: - Run the sample hello-world python app

![image](https://user-images.githubusercontent.com/28235504/213685433-ba6c1a21-3a1a-476a-9859-c619559a4e40.png)
![image](https://user-images.githubusercontent.com/28235504/213685238-c33d35ff-5758-44e6-82df-23ebba109ccf.png)
![image](https://user-images.githubusercontent.com/28235504/213684978-624e671b-629f-40ed-ae3c-3c97c4cf09f2.png)

