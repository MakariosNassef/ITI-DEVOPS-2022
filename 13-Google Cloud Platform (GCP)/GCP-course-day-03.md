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
   - d
   - 
3. Try to configure IAP at the load balancer level to protect your ingress access. Is it possible to have IAP enabled for HTTP resources?
   - d


### Lab 3.3
1. Create a private standard GKE cluster.
   - 
3. Deploy Nginx as a deployment using latest Nginx docker image on Docker Hub.
4. Expose your Nginx deployment using Kubernetes LoadBalancer Service.
5. What is the type of GCP Load Balancer that is created for your LB service?
6. Use kubectl to view container logs.
7. Use cloud logging service to view container logs. [hint: search about cloud logging service for gke]
8. (Bonus) setup a HTTP load balancer for your deployment using the kubernetes ingress resource. (hint: link)
9. Create an autopilot GKE cluster with public control plane.
10. Enforce the cluster’s control plane to accept only connections from your local machine.
