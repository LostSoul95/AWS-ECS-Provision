## HASHBROWN-CMS Solution using AmazonECS and ALB

1.)This setups a Container Cluster on AWS using terraform. We are using load balancing and auto scaling as a part of this solution.

2.) Docker image of the original Node.js application is pushed on to the given docker registry 
using Amazon ECR plugin inbuilt in drone.io CI pipeline.

3.) For every push on the master branch of the forked Hashbrown-CMS repository, a build is triggered where in a docker image is pushed on to the ECR.

4.) This setup essentially helps automate all the tasks. It collects the image from our ECR and then deploys it using the ECS.

5.) Load balancing and auto scaling are part of the solutions. 

6.) For testing out this setup,we have the DNS name of the load balancer spewed out as an output property in output.tf. We will hit the DNS on any browser and test out our setup.

