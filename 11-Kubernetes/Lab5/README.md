# Lab 5 Deploying PHP Guestbook application with Redis

### 1-Create Microservice called “redis-leader”
Image:"docker.io/redis:6.0.5"
Listenerport:6379
Namespace:dev
Replicas:1
Note:“redid-leader” is a backend Microservice

### 2-Create Microserve called “redis-follower”
Image:gcr.io/google_samples/gb-redis-follower:v2
ListenerPort:6379
Namespace:dev
Replicas:2
Note:“redid-follower”is a backend Microservice

### 3-Create Microservice called “frontend”
```
Image:gcr.io/google_samples/gb-frontend:v5
ListenerPort:80
Namespace:dev
Replicas:3
Has EnvironmentVariable:
Key:GET_HOSTS_FROM
Value:“dns”
```

### 4-After creating the 3 microservice,you should able to access to front end service url and take screenshot of the output.
![image](https://user-images.githubusercontent.com/28235504/210804266-8214d078-f4b7-4cdc-9caa-e77252e38d11.png)
