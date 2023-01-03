### 1-How many Services exist on the system?

### 2-What is the type of the default kubernetes service?

### 3-What is the targetPort configured on the kubernetes service?

### 4-How many labels are configured on the kubernetes service?

### 5-How many Endpoints are attached on the kubernetes service?

### 6-Create a Deployment using the below yaml

apiVersion: apps/v1
kind: Deployment
metadata:
  name: simple-webapp-deployment
  namespace: default
spec:
  replicas: 4
  selector:
    matchLabels:
      name: simple-webapp
  strategy:
    rollingUpdate:
      maxSurge: 25%
      maxUnavailable: 25%
    type: RollingUpdate
  template:
    metadata:
      creationTimestamp: null
      labels:
        name: simple-webapp
    spec:
      containers:
      - image: kodekloud/simple-webapp:red
        imagePullPolicy: IfNotPresent
        name: simple-webapp
        ports:
        - containerPort: 8080
          protocol: TCP

### 7-What is the image used to create the pods in the deployment?

### 8-Create a new service to access the web application using the the below 

Name: webapp-service
Type: NodePort
targetPort: 8080
port: 8080
nodePort: 30080
selector:
  name: simple-webapp
