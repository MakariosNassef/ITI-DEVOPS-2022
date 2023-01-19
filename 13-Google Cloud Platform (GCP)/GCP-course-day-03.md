# topic that task cover
### Networking in GCP
### Google Kubernetes Engine (GKE)


Lab 3.1
1. In previous lab you created the VPC “auto-vpc”, How many routes created for this VPC? Can you delete any of these routes?
   - there is 37 Routes in auto-vpc 
   - you cant delete any of them
3. In previous lab you created a VPC named “custom-vpc” How many routes created for this VPC?
   - 3 Routes 2 of them for subnet and 1 Nat gateway.
5. How would you block internet access from you vpc using routes?
6. Add a NAT gateway on any of the subnets in your VPC.

Lab 3.2
1. In previous lab you created an MIG of a template using the custom image “custom-img-nginx”,
Create a Global (or Regional) HTTP Load balancer to access your MIGs Nginx setup.
2. Try to configure IAP at the load balancer level to protect your ingress access. Is it possible to have
IAP enabled for HTTP resources?

Lab 3.3
1. Create a private standard GKE cluster.
2. Deploy Nginx as a deployment using latest Nginx docker image on Docker Hub.
3. Expose your Nginx deployment using Kubernetes LoadBalancer Service.
4. What is the type of GCP Load Balancer that is created for your LB service?
5. Use kubectl to view container logs.
6. Use cloud logging service to view container logs. [hint: search about cloud logging service for gke]
7. (Bonus) setup a HTTP load balancer for your deployment using the kubernetes ingress resource. (hint: link)
8. Create an autopilot GKE cluster with public control plane.
9. Enforce the cluster’s control plane to accept only connections from your local machine.
