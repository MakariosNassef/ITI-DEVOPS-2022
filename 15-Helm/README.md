# Lab 1
to install Helm

```
$ curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
$ chmod 700 get_helm.sh
$ ./get_helm.sh
```
    
## 1. Create a helm chart for the app below and deploy it (try to keep everything changeable using values.yaml)
https://github.com/SamarGooda/bakehouse-ITI.

### Minikube tunnel 
 . ![image](https://user-images.githubusercontent.com/28235504/217106289-98341464-f6e5-46aa-996d-bbe411a16382.png)
### app 
 . ![image](https://user-images.githubusercontent.com/28235504/217106501-fd8c91ca-a3b2-4e46-a4ef-f80ce0f17145.png)
### Helm upgrade
 . ![image](https://user-images.githubusercontent.com/28235504/217105730-a7bdca6d-d17e-44c0-9ba5-923ceaa31044.png)
### Helm Rollback
 . ![image](https://user-images.githubusercontent.com/28235504/217105939-261d48d2-9bd0-4103-b1ba-ab1a29ad675b.png)


## 2. Deploy Jenkins Chart on the cluster and login to Jenkins. 
- Jenkins package https://artifacthub.io/packages/helm/jenkinsci/jenkins
- helm repo add jenkins https://charts.jenkins.io
- helm repo update
![image](https://user-images.githubusercontent.com/28235504/217109258-e138c897-6fc9-4979-b4db-07de8433457b.png)

```
NOTES:
1. Get your 'admin' user password by running:
   - kubectl exec --namespace default -it svc/my-jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo
2. Get the Jenkins URL to visit by running these commands in the same shell:
   - echo http://127.0.0.1:8080
   - kubectl --namespace default port-forward svc/my-jenkins 8080:8080
3. Login with the password from step 1 and the username: admin
```
![image](https://user-images.githubusercontent.com/28235504/217117865-1ae8522c-81c3-41ec-b233-2d03c455b1f4.png)
