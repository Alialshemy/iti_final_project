# GCP-Final-Task 
Deploy a python web application on GKE. Infrastructure built using terraform. Using docker to containerize the application.

## Build image and upload to GCR
```
docker build -t <img-name> gcr.io/<project-id>/<img-name> .
gcloud auth configure-docker   # to autherize docker to push image
docker push gcr.io/<project-id>/<img-name>
```
## Build infrastructure on GCP
```
cd terraform/
terraform init
terraform apply
```

## Connect to private GKE cluster through private vm
# terraform three module 
1- network: create two subnet </br>
2- bastion create bastion vm  only can connected to eks</br>
3- eks create cluster and registery
```
gcloud compute ssh management-instance --tunnel-through-iap
gcloud container clusters get-credentials private-cluster --zone us-central1-a
```
![Screenshot%20from%202022-10-29%2022-41-49.png](https://github.com/Alialshemy/GCP_Project/blob/main/images/Screenshot%20from%202022-10-29%2022-41-49.png)
## Deploy app to GKE cluster and expose deploymnet through load balancer
```
helm install myapp ./Helm
```
![Screenshot%20from%202022-10-29%2022-41-49.png](https://github.com/Alialshemy/GCP_Project/blob/main/images/Screenshot%20from%202022-10-29%2023-43-01.png)


## Connect using load balancer public IP
![Screenshot%20from%202022-10-29%2022-35-42](https://github.com/Alialshemy/GCP_Project/blob/main/images/Screenshot%20from%202022-10-29%2023-21-05.png)
]
# iti_final_project
