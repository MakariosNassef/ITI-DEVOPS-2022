# lab 3.2

## 1.Using gsutil:
### Create 3 buckets.

### Enable Versioning for them. 

### Upload a file into bucket-1 then copy it from bucket-1 into bucket-2 & bucket-3. 
### Delete the file from bucket-1 

## 2.Host a static website on a standard public GCS bucket.
![image](https://user-images.githubusercontent.com/28235504/213772141-429eda0c-1779-4ff8-bac1-e693dc969809.png)


## 3.Deploy MySQL private instance and connect to it then create a new database.


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

