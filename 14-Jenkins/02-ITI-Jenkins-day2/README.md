# Jenkins

## Jenkins Course Lab 1 day 2

## 4- configure jenkins image to run docker commands on your host docker daemon
![image](https://user-images.githubusercontent.com/28235504/216189761-147089ac-87a7-4757-bcd7-c28176b85de5.png)
![image](https://user-images.githubusercontent.com/28235504/216193129-969f1f52-aaf4-41f7-bc5d-f83cca9f8063.png)

### ip of countainer that used in my revirse proxy on the EC2 instance
![image](https://user-images.githubusercontent.com/28235504/216193434-ee570096-279f-44a9-963b-b86765a94cb4.png)
![image](https://user-images.githubusercontent.com/28235504/216193807-7d0422b8-df6a-4bc4-8f16-69a2663b6ed5.png)
![image](https://user-images.githubusercontent.com/28235504/216193899-6d012069-4293-4465-acbb-6c9415db3cd4.png)
![image](https://user-images.githubusercontent.com/28235504/216193951-af293759-99e8-41f4-8bda-b5512c2c201a.png)


``` 
sudo docker run -it -d --name jenkins-master -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home master-jenkins:009
```

## 5- create CI/CD for this repo https://github.com/mahmoud254/jenkins_nodejs_example.git
![image](https://user-images.githubusercontent.com/28235504/216196642-bad43a8c-9f3b-4a28-ab2e-7d7a7c28c3b0.png)
![image](https://user-images.githubusercontent.com/28235504/216198131-60dd13bc-817d-40a0-82e9-64b408548881.png)
![image](https://user-images.githubusercontent.com/28235504/216198169-7f7a9030-2e09-4495-8104-69d6a0dab1ac.png)
![image](https://user-images.githubusercontent.com/28235504/216198295-42596c7f-543f-4177-a33a-6c47e769def6.png)
![image](https://user-images.githubusercontent.com/28235504/216198857-359851fb-58a7-4958-929c-bc0022973d0d.png)

### 1- create docker file to build image for jenkins slave
sudo docker run -it -d --name contan-slave -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_slave:/var/jenkins_slave jenkins-slave-ubuntu:latest
![image](https://user-images.githubusercontent.com/28235504/216308504-85873305-2230-4406-b969-d8c4d098b5e4.png)
![image](https://user-images.githubusercontent.com/28235504/216317012-773df251-416a-447c-af6d-94f34376dd09.png)

### 2- create container from this image and configure ssh
![image](https://user-images.githubusercontent.com/28235504/216320035-e7a067bc-b3e4-4220-9825-c9809392c2df.png)

### configure ssh
![image](https://user-images.githubusercontent.com/28235504/216320463-8703ab30-784c-40c1-8f6d-ee6a1968eaad.png)

### 3  from jenkins master create new node with the slave container
![image](https://user-images.githubusercontent.com/28235504/216322743-ba7d9445-e9d5-47aa-af12-7e149cfc316d.png)
![image](https://user-images.githubusercontent.com/28235504/216324102-3abfefac-028e-4970-a07b-3bb0fa6d3e61.png)
![image](https://user-images.githubusercontent.com/28235504/216329040-0b26e8e7-5abc-4760-997f-b2f6229a639f.png)
![image](https://user-images.githubusercontent.com/28235504/216338993-3f0ecf2d-e275-4d7b-b89b-5cdd443a5b0b.png)
![image](https://user-images.githubusercontent.com/28235504/216340480-f4ceb1c5-0a15-4783-8259-45e799a4f066.png)

### 4- integrate slack with jenkins
![image](https://user-images.githubusercontent.com/28235504/216342676-cd122804-06d4-41a7-954b-311fb9d06e98.png)
![image](https://user-images.githubusercontent.com/28235504/216343413-92471d27-c7a6-4e5d-8b3a-2a9148ddb1af.png)
![image](https://user-images.githubusercontent.com/28235504/216345573-51502f48-d881-4b94-a542-8493f6c36714.png)
![image](https://user-images.githubusercontent.com/28235504/216345681-eb4651ea-82ca-431f-ac00-77b455a3c277.png)

## 5- send slack message when stage in your pipeline is successful
![image](https://user-images.githubusercontent.com/28235504/216346660-92a6a85f-0f44-4470-925b-8f82fde6bbdc.png)
![image](https://user-images.githubusercontent.com/28235504/216346602-25923b6b-4f2c-4794-a761-b62bcdfa09db.png)

## 6- install audit logs plugin and test it
![image](https://user-images.githubusercontent.com/28235504/216348019-6b7a1cef-0b24-40ed-a26d-f5b394ac2f5b.png)

## 7- fork the following repo https://github.com/mahmoud254/Booster_CI_CD_Project and add dockerfile to run this django app and use github actions to build the docker image and push it to your dockerhub
![image](https://user-images.githubusercontent.com/28235504/216348712-e97a2381-2bfe-42ee-b044-bd8d92494861.png)
![image](https://user-images.githubusercontent.com/28235504/216349590-a706d78b-378d-4d80-8360-35b7ee0b22b7.png)
![image](https://user-images.githubusercontent.com/28235504/216350757-3fff3a6d-4268-4d77-b4dd-c60bb3aa2d27.png)
![image](https://user-images.githubusercontent.com/28235504/216353086-a617b818-fcdc-47dc-af42-bd8abbdc1cc4.png)
![image](https://user-images.githubusercontent.com/28235504/216353616-9f6e01a8-9905-4a3e-9cb4-060526facdc9.png)
![image](https://user-images.githubusercontent.com/28235504/216353562-035e87ef-48a8-4297-bbb3-133e98b5edb3.png)


