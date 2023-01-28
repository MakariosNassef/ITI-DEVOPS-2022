# Jenkins

## Jenkins Course Lab 1 day 1

## 1- install jenkins with docker image
 ![image](https://user-images.githubusercontent.com/28235504/215155463-8b8f19da-0a71-4889-a14a-52da8737a8a9.png)
 ![image](https://user-images.githubusercontent.com/28235504/215155597-481d5a12-0c3e-49a1-8f66-ef6f429437e4.png)

## 2- install role based authorization plugin 
![image](https://user-images.githubusercontent.com/28235504/215155802-5cf139f7-adef-4de9-bc3b-0214aeeac489.png)
 
## 3- create new user
![image](https://user-images.githubusercontent.com/28235504/215155929-10cb2f41-723b-4528-8355-d7d3a5f507b5.png)

## 4- create read role and assign it to the new user
![image](https://user-images.githubusercontent.com/28235504/215161163-1ff9ba0c-df30-4e4d-b1d1-f05f7417d277.png)
![image](https://user-images.githubusercontent.com/28235504/215161232-61caf8d7-d9fd-4c64-a24f-50e55bdeec85.png)
![image](https://user-images.githubusercontent.com/28235504/215161281-1ae0476b-5c8e-4e56-bc6f-b89e7207b0b1.png)
```
      1 - To manage access and permissions for different groups of users.
      2 - To delegate responsibilities among different team members.
      3 - To enforce security and compliance requirements.
      4 - To improve collaboration among team members
      5 - To support scalability for large number of users and projects.
```

## 5- create free style pipeline and link it to private git repo(inside it create directory and create file with "hello world")
![image](https://user-images.githubusercontent.com/28235504/215221958-d51e621d-7d2f-4e94-9f00-841f534e8f89.png)
![image](https://user-images.githubusercontent.com/28235504/215222031-84fdb646-090c-4f59-b5bd-09ff7336bc47.png)

------------------------------------------------------

## 1- create declarative in jenkins GUI pipeline for your own repo to do "ls"
![image](https://user-images.githubusercontent.com/28235504/215227507-8439c43a-f8b8-4232-83c0-7daa208b3ad8.png)
![image](https://user-images.githubusercontent.com/28235504/215227537-e2412f72-83d7-403a-a446-d98bbeb2aeed.png)

## 2- create scripted in jenkins GUI pipeline for your own repo to do "ls"
![image](https://user-images.githubusercontent.com/28235504/215228061-f029c7be-3dbc-4ff0-8535-fb734316c3c8.png)
![image](https://user-images.githubusercontent.com/28235504/215228112-e473c660-6842-48de-8e80-13a217af87f8.png)
![image](https://user-images.githubusercontent.com/28235504/215228210-c8ce8d0a-cf81-4050-a305-d778c85c3d74.png)

## 3- create the same with jenkinsfile in your branches as multibranch pipeline.
![image](https://user-images.githubusercontent.com/28235504/215229232-09e89c4a-181a-4ef3-aba9-f030cbf8c621.png)
![image](https://user-images.githubusercontent.com/28235504/215229404-06e4635b-d1a0-4e6b-8794-12d8d352ab6a.png)
![image](https://user-images.githubusercontent.com/28235504/215229493-da0166d8-3728-49b2-9e2d-10e2221cc12b.png)


```
pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo 'Hello, Build!'
            }
        }
        stage('Test') { 
            steps {
                echo 'Hello, Test!'
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Hello, Deploy!'
            }
        }
    }
}
```
