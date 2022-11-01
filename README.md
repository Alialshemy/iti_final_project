# Final Project
  Build infrastructure to deploy jenkins server and deploy Django application
# Requirements
  - Terraform installed
  - helm installed
# Architecture overview of infrastructure
![Architecture](https://github.com/Alialshemy/iti_final_project/blob/main/images/infastracture.png)

# terrafrom code  Consists of three modules
  - network module:  create network infrastructure two subnets private (manage,restricted) and two nat 
  - bastions module:  create bastions instance in manage subnet to manage cluster and bash script to dowbload all Requirements in bastion instance 
  - K8s module : to create private cluster in restricted subnet
# How to run terrafrom code
   ```
   git clone https://github.com/Alialshemy/iti_final_project.git
   cd iti_final_project
   terrform init 
   terraform apply
   ```
# install jenkins in cluster 
 - connect to cluster 
  ```
    gcloud container clusters get-credentials cluster_name --zone zone_name--project project_id
  ```
  - create namespace 
  ``` 
  kubectl create namespace jenkins
  ```
 - pull jenkins with helm 
```
   helm repo add jenkins https://charts.jenkins.io
   helm repo update
   helm pull --untar jenkins/jenkins
```
  - change serviceType in value.yml file to LoadBalancer and install
``` 
  helm install jenkins ./jenkins -n jenkins
```
- configure dynamic agent in jenkins with kubernate plugin 
- configure service account in jenkins used to  deploy in cluster
- create pipline to Deploy app [Deploy_app](https://github.com/Alialshemy/Django_app.git)
 


