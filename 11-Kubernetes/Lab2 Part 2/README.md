### 1-Create a deployment called my-first-deployment of image nginx:alpine in the default namespace.Check to make sure the deployment is healthy.
- ![image](https://user-images.githubusercontent.com/28235504/210227477-6c845a29-6439-4bda-ac2a-30c2f98ca448.png)
- ![image](https://user-images.githubusercontent.com/28235504/210227279-ea02506b-68dd-4926-8c8e-46619a873341.png)

### 2-Scale my-first-deployment up to run 3 replicas. Check to make sure all 3 replicas are ready.
- ![image](https://user-images.githubusercontent.com/28235504/210227543-f1126370-d45e-4108-b2b1-ee934c8d09a5.png)

### 3-Scale my-first-deployment down to run 2 replicas.
- ![image](https://user-images.githubusercontent.com/28235504/210227730-590dbeaa-e981-4cd2-9e7a-791c29e198c9.png)

### 4-Change the image my-first-deployment runs from nginx:alpine to httpd:alpine.k set image deployment my-first-deployment nginx=httpd:alpine
- ![image](https://user-images.githubusercontent.com/28235504/210228385-23a69624-dc37-489d-b96f-931d727e1468.png)
- ![image](https://user-images.githubusercontent.com/28235504/210228219-3dfd9e72-6058-4a51-b6ee-56772c88d820.png)

### 5-Delete the deployment my-first-deployment
- kubectl delete deployments.apps/my-first-deployment 

### 6-Create deployment from the below yaml
- ![image](https://user-images.githubusercontent.com/28235504/210228858-84b12dc4-60fe-42fc-ae60-142dddf05c1c.png)

### 7-How many ReplicaSets exist on the system now?
- ![image](https://user-images.githubusercontent.com/28235504/210229114-e37107db-8c83-43f2-8f21-2838b532968c.png)

### 8-How many PODs exist on the system now?
- ![image](https://user-images.githubusercontent.com/28235504/210229321-b6295505-05eb-4bc1-baab-e97639172459.png)

### 9-Out of all the existing PODs, how many are ready?
- zero 
 
### 10-What is the image used to create the pods in the new deployment?
- ![image](https://user-images.githubusercontent.com/28235504/210228858-84b12dc4-60fe-42fc-ae60-142dddf05c1c.png)

### 11-Why do you think the deployment is not ready?
- repository does not exist or the image not found

### 12-Create a new Deployment using the below yaml 
- 

### 13-There is an issue with the file, so try to fix it.and correct the value of kind.
- 
