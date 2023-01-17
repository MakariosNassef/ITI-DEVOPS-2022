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
--------------------------
# Lab 1.2
### 1. From Cloud console, do the following:
- I. Create custom role named "my-custom-role-1" with the following permissions only:
  –Iam.roles.get
  –Iam.roles.list
   - ![image](https://user-images.githubusercontent.com/28235504/212944042-e73d632b-3b46-4457-9782-c1d9b2f0a2e0.png)

   - ```gcloud iam roles create mycustomrole1 --project iti-makarios --title "my-custom-role-1" --permissions iam.roles.get,iam.roles.list```
   -  ![image](https://user-images.githubusercontent.com/28235504/212925801-e968beb5-5ef3-4c4d-bb96-705f01c1d065.png)

### 2. From Cloud console, Explore primitive and pre-defined roles and their permissions.
 - ![image](https://user-images.githubusercontent.com/28235504/212962771-a30208d0-0014-4267-8af4-0fd8b56eea0c.png)
 - ![image](https://user-images.githubusercontent.com/28235504/212963024-25584e79-4efd-46e3-a36b-5226a9532698.png)
 - ![image](https://user-images.githubusercontent.com/28235504/212962619-1f4ea7d2-714b-40e1-bd06-4f3a0822f2b2.png)
 - ```gcloud iam list-grantable-roles //cloudresourcemanager.googleapis.com/projects/iti-makarios```

### 3. From Cloud console, Create a service account with id "my-first-serviceaccount".
 - ![image](https://user-images.githubusercontent.com/28235504/212959913-569a2773-88cd-4584-b098-1860287c6147.png)
 - ```gcloud iam service-accounts create my-first-serviceaccount ``` 
 - ![image](https://user-images.githubusercontent.com/28235504/212929518-b731aed1-0e9e-4726-b721-1216d00aa269.png)

### 4. From Cloud console, Assign the custom role "my-custom-role-1"to the service account"my-first-serviceaccount"
 - ![image](https://user-images.githubusercontent.com/28235504/212974767-262622a4-e252-4e8d-a152-2a61bbd3c141.png)

### 5. Using gcloud,
I. List all roles on your project.
 - ```gcloud iam roles list --project=iti-makarios```

II. Describe the predefined role "roles/compute.viewer" and view itsdetails & permissions
 - ```gcloud iam roles describe mycustomrole1 --project=my-iti-makarios```
 - ![image](https://user-images.githubusercontent.com/28235504/212980105-6758aa67-b808-4b24-8dd7-425249dc525d.png)

III. Describe the custom role "my-custom-role-1" and view its details & permissions.
 - ```gcloud iam roles describe roles/my-custom-role-1```

IV. List all authenticated accounts.
 - ```gcloud auth list ```

V.Activate the service account "my-first-serviceaccount".
 - ```gcloud auth activate-service-account my-first-serviceaccount-345@iti-makarios.iam.gserviceaccount.com --key-file=my-key.json```
 - ![image](https://user-images.githubusercontent.com/28235504/212969487-1a53ee7e-7a39-45bd-99d8-f1b7ef605a25.png)

VI. List all authenticated accounts again.
 - ```gcloud auth list```
 - ![image](https://user-images.githubusercontent.com/28235504/212969702-841a6ca1-4111-41f7-9c6d-9005494210e5.png)

VII. Using this service account, try to list all roles on your project.
 - ```gcloud iam roles list --project=iti-makarios```
 - ![image](https://user-images.githubusercontent.com/28235504/212970554-165df013-b23a-4e98-a601-36e1b524dfbb.png)

VIII. Try to delete custom role "my-custom-role-1"
 - ``` gcloud iam roles delete my-custom-role-1 ```
 - ![image](https://user-images.githubusercontent.com/28235504/212970873-ea862b2b-ff5a-4c55-95e7-6fe6bfa5d3a7.png)
