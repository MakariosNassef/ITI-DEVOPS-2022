# Jenkins

## Jenkins Course Lab 1 day 2

### 4- configure jenkins image to run docker commands on your host docker daemon
![image](https://user-images.githubusercontent.com/28235504/216189761-147089ac-87a7-4757-bcd7-c28176b85de5.png)
![image](https://user-images.githubusercontent.com/28235504/216193129-969f1f52-aaf4-41f7-bc5d-f83cca9f8063.png)

- ip of countainer that used in my revirse proxy on the EC2 instance
![image](https://user-images.githubusercontent.com/28235504/216193434-ee570096-279f-44a9-963b-b86765a94cb4.png)
![image](https://user-images.githubusercontent.com/28235504/216193807-7d0422b8-df6a-4bc4-8f16-69a2663b6ed5.png)
![image](https://user-images.githubusercontent.com/28235504/216193899-6d012069-4293-4465-acbb-6c9415db3cd4.png)
![image](https://user-images.githubusercontent.com/28235504/216193951-af293759-99e8-41f4-8bda-b5512c2c201a.png)

```
FROM jenkins/jenkins:lts
USER root
RUN apt-get update && \
    apt-get install apt-transport-https curl gnupg-agent ca-certificates software-properties-common -y && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y && \
    apt-get update && \
    apt-get install docker-ce docker-ce-cli containerd.io -y

#USER jenkins
```
sudo docker run -it -d --name jenkins-master -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home master-jenkins:009

### 5- create CI/CD for this repo https://github.com/mahmoud254/jenkins_nodejs_example.git New Questions part.
  - 1- create docker file to build image for jenkins slave
  - 2- create container from this image and configure ssh
  - 3 from jenkins master create new node with the slave container
  - 4- integrate slack with jenkins
  - 5- send slack message when stage in your pipeline is successful
  
### 6- install audit logs plugin and test it

### 7- fork the following repo https://github.com/mahmoud254/Booster_CI_CD_Project and add dockerfile to run this django app and use github actions to build the docker image and push it to your dockerhub
