# Lab4 Day k8s Storage
<img src= "https://user-images.githubusercontent.com/28235504/210531463-aaa0bc9b-8e19-4587-a53e-b6f3a0605248.png"  width="400" >

### 1-create pod from the below yaml file
![image](https://user-images.githubusercontent.com/28235504/210533573-48c66e8b-a4a0-4743-8f8f-8f9e460eef3f.png)

### 2-Configure a volume to store these logs at /var/log/webapp on the host.
![image](https://user-images.githubusercontent.com/28235504/210539990-4c312793-da39-415d-aa3b-1051b8845310.png)
![image](https://user-images.githubusercontent.com/28235504/210540035-2ee77475-84d9-49a3-b498-39281095e3c6.png)

### 3-Create a Persistent Volume with the given specification.
![image](https://user-images.githubusercontent.com/28235504/210540462-4da33fc2-2665-4223-af09-64fbab50068a.png)
![image](https://user-images.githubusercontent.com/28235504/210540567-5a448c1a-eea9-4f77-a423-224085d4fe2c.png)

### 4- Let us claim some of that storage for our application. Create a Persistent Volume Claim with the given specification.
![image](https://user-images.githubusercontent.com/28235504/210540901-e0e3b5f4-7485-473f-a3fb-b909a6d78631.png)


### 5- What is the state of the Persistent Volume Claim?
![image](https://user-images.githubusercontent.com/28235504/210541053-35d6df38-0ec7-45f4-802b-9dd975a846a5.png)
<pre>Bound</pre>

### 6- What is the state of the Persistent Volume?
![image](https://user-images.githubusercontent.com/28235504/210541493-84dc893b-937f-4599-940b-215a1c2a34f7.png)
<pre>Avilable</pre>


### 7- Why is the claim not bound to the available Persistent Volume?

### 8- Update the Access Mode on the claim to bind it to the PV?
