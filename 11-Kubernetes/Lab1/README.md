### 1- How many pods exist on the system?
- In the current(default) namespace.
     - controlplane $ kubectl get pods 
     - No resources found in default namespace.
 
### 2- How many Nodes exist on the system?
          - controlplane $ kubectl get nodes 
          - NAME           STATUS   ROLES           AGE   VERSION
          - controlplane   Ready    control-plane   9d    v1.25.3
 
 
 

### 3- Create a new pod with the nginx image.
    - Image name: nginx
 ![image](https://user-images.githubusercontent.com/28235504/210168370-36784969-134f-4c7a-9f6c-c04b3729717d.png)



### 4- Which nodes are these pods placed on?
![image](https://user-images.githubusercontent.com/28235504/210168405-e982d394-13a5-4ac0-a4d5-6c7d5b984778.png)

### 5- Create pod from the below yaml using kubectl apply command
![image](https://user-images.githubusercontent.com/28235504/210168450-4a6a7b90-932e-48b7-a570-c3111cd008c5.png)
![image](https://user-images.githubusercontent.com/28235504/210168512-fe14a464-e7d5-4655-838c-c6bea228839b.png)

### 6- How many containers are part of the pod webapp
![image](https://user-images.githubusercontent.com/28235504/210168758-1bc15480-18ba-4958-8c0e-fff7f6a53d53.png)


### 7- What images are used in the new webapp pod?
    -  nginx
    -  agentx

![image](https://user-images.githubusercontent.com/28235504/210168814-f45fbb98-7c74-469c-9778-3109f358a462.png)

    
### 8- What is the state of the container agentx in the pod webapp
     - waiting
![image](https://user-images.githubusercontent.com/28235504/210168923-3ff9833c-84ad-40b7-b4d0-3678fed4b045.png)


### 9- Why do you think the container agentx in pod webapp is in error?
The ImagePullBackOff error occurs when the image path is incorrect, the network fails, or the kubelet does not succeed in authenticating with the container registry.

### 10- Delete the webapp Pod.
![image](https://user-images.githubusercontent.com/28235504/210169175-85040171-16bc-4cca-982b-dbe90ef2ea15.png)


### 11- Create a new pod with the name redis and with the image redis123.
     - Name: redis
     - Image Name: redis123
![image](https://user-images.githubusercontent.com/28235504/210169249-39e4a480-4981-469b-99a5-c31802df0d0a.png)



### 12- Now change the image on this pod to redis.
Once done, the pod should be in a running state.



### 13- Create a pod called my-pod of image nginx:alpine



### 14- Delete the pod called my-pod
