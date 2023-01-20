# topic that task cover
## Networking in GCP
## Google Kubernetes Engine (GKE)


### Lab 3.1
1. In previous lab you created the VPC “auto-vpc”, How many routes created for this VPC? Can you delete any of these routes?
   - there is 37 Routes in auto-vpc 
   - you can delete only default route to the internet
3. In previous lab you created a VPC named “custom-vpc” How many routes created for this VPC?
   - 3 Routes 2 of them for subnet and 1 Nat gateway.
5. How would you block internet access from your vpc using routes?
   - using route tables. You can create a route table with a destination of 0.0.0.0/0 and a target of “blackhole” or “deny”, which will prevent any traffic from leaving the VPC.
   - or by delete default route to internet 
7. Add a NAT gateway on any of the subnets in your VPC.
   - ![image](https://user-images.githubusercontent.com/28235504/213449178-39ec1d6a-cf38-4b2a-91f8-76b143b72849.png)

### Lab 3.2
1. In previous lab you created an MIG of a template using the custom image “custom-img-nginx”, Create a Global (or Regional) HTTP Load balancer to access your MIGs Nginx setup.
   - ![image](https://user-images.githubusercontent.com/28235504/213479392-50ee8183-a97a-432b-aab9-80583b2f1a5a.png)
   - ![image](https://user-images.githubusercontent.com/28235504/213484914-dd290ce8-52fb-47e7-a092-606860785117.png)
   - ![image](https://user-images.githubusercontent.com/28235504/213485206-95b04a43-5145-459c-88d3-6c59d1180166.png)
   - ![image](https://user-images.githubusercontent.com/28235504/213487503-56a5a15e-49d9-4a7b-b0fc-887aca3c043d.png)
   - ![image](https://user-images.githubusercontent.com/28235504/213483418-cd9402eb-35ce-4f72-b51f-3c96a80a1537.png)

3. Try to configure IAP at the load balancer level to protect your ingress access. Is it possible to have IAP enabled for HTTP resources?
   - ![image](https://user-images.githubusercontent.com/28235504/213488341-49a0c797-e7f4-40c1-88ce-d90571fd2008.png)


 


### Lab 3.3
1. Create a private standard GKE cluster.
      - ![image](https://user-images.githubusercontent.com/28235504/213598651-11584532-6e00-46fd-8f95-1d82e2e64a04.png)
      - ![image](https://user-images.githubusercontent.com/28235504/213598699-3c3117dc-9a80-401f-871b-2498e460ca64.png)
      - ![image](https://user-images.githubusercontent.com/28235504/213598738-fd308266-e508-4c4e-8164-ec65521f1129.png)

3. Deploy Nginx as a deployment using latest Nginx docker image on Docker Hub.
      - ![image](https://user-images.githubusercontent.com/28235504/213599356-28f11dfd-9b61-4d22-9984-182cb07003ac.png)
5. Expose your Nginx deployment using Kubernetes LoadBalancer Service.
      - ![image](https://user-images.githubusercontent.com/28235504/213600744-a59026ba-55b6-444d-bc31-0fa4ae24678a.png)

7. What is the type of GCP Load Balancer that is created for your LB service?
      - ![image](https://user-images.githubusercontent.com/28235504/213600871-12aecddd-a2d4-4ab8-be51-8739c02c1bb6.png)
      - External load balancer

9. Use kubectl to view container logs.
      - ![image](https://user-images.githubusercontent.com/28235504/213599652-f7aded54-5fd8-4138-be36-0b7695eb8585.png)

8. Use cloud logging service to view container logs. [hint: search about cloud logging service for gke]
      - ![image](https://user-images.githubusercontent.com/28235504/213600501-624d801f-f20c-4d94-bd99-e9e8d27938d1.png)

9. (Bonus) setup a HTTP load balancer for your deployment using the kubernetes ingress resource. (hint: link)
```
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: lb-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: example.com
    http:
      paths:
      - path: /lb-service
        pathType: Prefix
        pathRewrite: /
        backend:
          service:
            name: lb-service
            port:
              name: http
              number: 80
```
```
apiVersion: v1
kind: Service
metadata:
  name: lb-service
spec:
  selector:
    app: lb-app
  ports:
  - name: http
    port: 80
    targetPort: 8080
  type: ClusterIP
```
> kubectl apply -f ingress.yaml -f service.yaml
-----------------------------------------------------
11. Create an autopilot GKE cluster with public control plane.
12. Enforce the cluster’s control plane to accept only connections from your local machine.
