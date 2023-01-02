### 1-Create a deployment called my-first-deployment of image nginx:alpine in the default namespace.
Check to make sure the deployment is healthy.

### 2-Scale my-first-deployment up to run 3 replicas.
Check to make sure all 3 replicas are ready.

### 3-Scale my-first-deployment down to run 2 replicas.

### 4-Change the image my-first-deployment runs from nginx:alpine to httpd:alpine .
k set image deployment my-first-deployment nginx=httpd:alpine

### 5-Delete the deployment my-first-deployment

### 6-Create deployment from the below yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: frontend-deployment
  namespace: default
spec:
  replicas: 4
  selector:
    matchLabels:
      name: busybox-pod
  strategy:
    rollingUpdate:
      maxSurge: 25%
      maxUnavailable: 25%
    type: RollingUpdate
  template:
    metadata:
      labels:
        name: busybox-pod
    spec:
      containers:
      - command:
        - sh
        - -c
        - echo Hello Kubernetes! && sleep 3600
        image: busybox888
        imagePullPolicy: Always
        name: busybox-container
        
### 7-How many ReplicaSets exist on the system now?

### 8-How many PODs exist on the system now?

### 9-Out of all the existing PODs, how many are ready?

### 10-What is the image used to create the pods in the new deployment?

### 11-Why do you think the deployment is not ready?

### 12-Create a new Deployment using the below yaml 

### 13-There is an issue with the file, so try to fix it.and correct the value of kind.
