# Lab 1.1
### 1. Explore Google Cloud Console.
- ![image](https://user-images.githubusercontent.com/28235504/212914820-da0d4e6e-079f-4215-91be-447b86ed15e0.png)

### 2. Setup a billing method on your google account.
- ![image](https://user-images.githubusercontent.com/28235504/212909915-751793c8-27b0-4ec7-a6be-3fc1c0b56255.png)

### 3. Create a GCP project.
![image](https://user-images.githubusercontent.com/28235504/212908838-546ae14d-41f0-43d8-95e0-f673cf98185e.png)
### 4. Assign your billing account to your project.
- ![image](https://user-images.githubusercontent.com/28235504/212919596-dc321d09-cdda-482c-a489-540c7967a65b.png)
### 5. Setup project budget.
- ![image](https://user-images.githubusercontent.com/28235504/212920249-906a45cb-10e6-4543-afaa-586331fde573.png)

### 6. Setup billing alerts.
- I have limited views of cost data and the Billing section; I can only see cost data for the project selected when you entered Billing.

### 7. Using cloud shell, list all projects and set default project.
- ![image](https://user-images.githubusercontent.com/28235504/212924003-cc554eb1-5a1a-4146-8535-503881108dc9.png)

### 8. Install and configure gcloud SDK on your pc.
- ![image](https://user-images.githubusercontent.com/28235504/212922491-e1a9301d-e4b3-4247-bd2c-c073b6c97258.png)

### 9. List all projects using gcloud SDK and set default project.
- ![image](https://user-images.githubusercontent.com/28235504/212922196-26de82c7-347a-4b18-83d7-569c2ba2d489.png)

# Lab 1.2
### 1. From Cloud console, do the following:
- I. Create custom role named "my-custom-role-1" with the following permissions only:
 –Iam.roles.get
 –Iam.roles.list

- ``` gcloud iam roles create mycustomrole1 --project iti-makarios --title "my-custom-role-1" --permissions iam.roles.get,iam.roles.list```
-  ![image](https://user-images.githubusercontent.com/28235504/212925801-e968beb5-5ef3-4c4d-bb96-705f01c1d065.png)

### 2. From Cloud console, Explore primitive and pre-defined roles and theirpermissions.
``` gcloud iam list-grantable-roles //cloudresourcemanager.googleapis.com/projects/iti-makarios ```
### 3. From Cloud console, Create a service account with id "my-first-serviceaccount".
- ``` gcloud iam service-accounts create my-first-serviceaccount ``` 
- ![image](https://user-images.githubusercontent.com/28235504/212929518-b731aed1-0e9e-4726-b721-1216d00aa269.png)

### 4. From Cloud console, Assign the custom role "my-custom-role-1"to the service account"my-first-serviceaccount"
### 5. Using gcloud,
- I. List all roles on your project.
- II. Describe the predefined role "roles/compute.viewer" and view itsdetails & permissions
- III. Describe the custom role "my-custom-role-1" and view its details & permissions.
- IV. List all authenticated accounts.V.Activate the service account "my-first-serviceaccount".
- VI. List all authenticated accounts again.
- VII. Using this service account, try to list all roles on your project.
- VIII. Try to delete custom role "my-custom-role-1"
1. gcloud iam roles list
2. gcloud iam roles describe roles/compute.viewer
3. gcloud iam roles describe my-custom-role-1
4. gcloud auth list
5. gcloud auth activate-service-account my-first-serviceaccount --key-file=my_key_file.json
6. gcloud auth list
7. gcloud iam roles delete my-custom-role-1
