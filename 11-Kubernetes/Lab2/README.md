### 1-Create a ReplicaSet using the below yaml
![image](https://user-images.githubusercontent.com/28235504/210223462-28b14c92-579a-4918-97e2-9f90490f98b0.png)

### 2-How many PODs are DESIRED in the new-replica-set?
![image](https://user-images.githubusercontent.com/28235504/210224687-a6c7f8e6-9d7e-4bb3-b5c2-9907d9f63740.png)

### 3-What is the image used to create the pods in the new-replica-set?
![image](https://user-images.githubusercontent.com/28235504/210224624-45092bc9-2d65-46aa-b2aa-b387ce2a9076.png)

### 4-How many PODs are READY in the new-replica-set?
- all image is not ready

### 5-Why do you think the PODs are not ready?
- repository does not exist

### 6-Delete any one of the 4 PODs. 
How many pods now
- ![image](https://user-images.githubusercontent.com/28235504/210225279-afdbde94-7087-4c44-9fa0-5897890d96e8.png)
- replica set recreate the pod that is deleted
### 7-Why are there still 4 PODs, even after you deleted one?
- replica set recreate the pod that is deleted

### 8-Create a ReplicaSet using the below yaml

There is an issue with the file, so try to fix it.
- old yaml file 
- ![image](https://user-images.githubusercontent.com/28235504/210225690-bda50d98-310e-4af8-bd40-f16cd6b58ff1.png)

- after fixed the issue 
- ![image](https://user-images.githubusercontent.com/28235504/210225880-12ff4d46-da77-418f-ba38-41a678be46a4.png)
- **apiVersion: apps/v1**
- ![image](https://user-images.githubusercontent.com/28235504/210226029-3aec5e26-3caf-4316-8354-cfef11264d5d.png)
