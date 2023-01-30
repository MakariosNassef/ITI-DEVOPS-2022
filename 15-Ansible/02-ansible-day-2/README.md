# Ansible course day-2

## 1- Install ansible and add two nodes ubuntu and centos to it
![image](https://user-images.githubusercontent.com/28235504/215471379-b0a29185-499e-4735-8c7d-631d28c1a7f3.png)
## Controller
![image](https://user-images.githubusercontent.com/28235504/215471683-360abd20-223a-4a34-8bf3-f9bfb96f9060.png)
## node ubuntu
![image](https://user-images.githubusercontent.com/28235504/215471964-a5e3444c-0f27-4322-8380-66cfcebaedd2.png)
## node centos
![image](https://user-images.githubusercontent.com/28235504/215473190-461cdf22-bf3f-4cb9-bcec-c95ac85de2b9.png)

## 2- Create index.html page on control node ,then create play book to install httpd then start the site with our index.html page (make sure that service os up and running , also make sure that all tasks in 1 playbook)

![image](https://user-images.githubusercontent.com/28235504/215530368-998e3ead-e279-48db-aa2b-74ed79afb51d.png)
![image](https://user-images.githubusercontent.com/28235504/215530461-c50d0475-e3ef-494c-99cf-a916cf5f4ba9.png)

## tags
![image](https://user-images.githubusercontent.com/28235504/215529544-e8680629-3fe4-43e4-a38e-fc06558127cc.png)
![image](https://user-images.githubusercontent.com/28235504/215529756-ecde90a1-6452-4993-b6b8-9fb60f832cad.png)
![image](https://user-images.githubusercontent.com/28235504/215529909-6aac9e8b-8d98-4841-a86c-ee7cf3fb27c3.png)

## RUNNING HANDLER
![image](https://user-images.githubusercontent.com/28235504/215534298-645011db-ff35-4f08-964a-92a5a9dd81c2.png)


## 3- Add new record in resolv.conf file at manage node (/etc/resolv.conf) using playbook from control node


