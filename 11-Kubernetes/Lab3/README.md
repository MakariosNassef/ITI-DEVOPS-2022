### 1-How many Services exist on the system?
 - There can be any number of Services in a Kubernetes cluster, depending on how the cluster is set up and what it is being used for. The number of Services in a cluster can vary widely, and there is no fixed number of Services that a cluster must have.
 
### 2-What is the type of the default kubernetes service?
 - By default, a Kubernetes service is of type ClusterIP, which means that it is only accessible within the cluster.
 ***********************
 - Other types of services include:
 - NodePort: exposes the service on a static port on each node in the cluster, allowing external traffic to access the service through the node's IP address and the static port.
 - LoadBalancer: creates a load balancer in the underlying cloud provider, which distributes incoming traffic to the service.
 - ExternalName: maps the service to an external DNS name, which can be used to access the service from outside the cluster.

### 3-What is the targetPort configured on the kubernetes service?
 - The targetPort is a field in a Kubernetes Service that specifies the port on the pod that the service should send traffic to. It is used in conjunction with the port field, which specifies the port on the service itself that traffic should be sent to.
 - ![image](https://user-images.githubusercontent.com/28235504/210341609-c86904b5-6180-44b9-8f4a-f37397350d2c.png)

### 4-How many labels are configured on the kubernetes service?
 - The number of labels that are configured on a Service can vary depending on the needs of the application.
 - ![image](https://user-images.githubusercontent.com/28235504/210342044-7d5feadc-28e0-4561-9342-9f23c50a46e5.png)

### 5-How many Endpoints are attached on the kubernetes service?
 - By default, the control plane creates and manages EndpointSlices to have no more than 100 endpoints each. You can configure this with the --max-endpoints-per-slice kube-controller-manager flag, up to a maximum of 1000.
 - Endpoint : objects that represent the network addresses of the pods that the service is exposing. The number of Endpoints that are attached to a Service depends on the number of pods that are selected by the Service's label selector and the availability of those pods.

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
