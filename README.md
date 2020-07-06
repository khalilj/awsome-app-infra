# awsome-app-infra

tf init
Create IAM user (terraform)
     AdministratorAccess - should be replaced with min required policies
aws configure
Create vpc and subnet
eks requires 2 subnets on 2 different AZ
Fix hardcoded subnet CIDR string

Commands:
    tf init
    tf apply -auto-approve -var-file=toluna.tfvars
    tf destroy -auto-approve -var-file=toluna.tfvars

Handle TF state

Handle TF output

aws eks --region us-east-2 update-kubeconfig --name training-eks-DGQKmShD


# GCP
gcloud init
gcloud container clusters get-credentials toluna-excercise --zone us-central1-c --project playground-281713

# helm
helm init
kubectl create serviceaccount --namespace kube-system tiller
kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'      
helm init --service-account tiller --upgrade

# Jenkins
Namespace: jenkins (k create ns jenkins)
helm install --name toluna-jenkins stable/jenkins
/etc/hosts: 35.192.193.230 jenkins.toluna
Access via: http://jenkins.toluna
Use Jenkins Kubernetes plugin to provision ephemeral agents
Configure k8s plugin to use Jenkins service toluna-jenkins:5000 for agents to connect to master

# Nginx Ingress
Namespace: toluna-system (k create ns toluna-system)
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx/
helm install --name ingress-nginx ingress-nginx/ingress-nginx