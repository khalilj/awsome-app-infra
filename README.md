# awsome-app-infra
tf init
Create IAM user (terraform)
     Project Editor - should be replaced with min required policies

Commands:
    tf init
    tf apply -auto-approve -var-file=excercise.tfvars
    tf destroy -auto-approve -var-file=excercise.tfvars

# Enhancements
1. Use Jenkins Job DSL to load job definition to Jenkins
2. Provision Nginx ingress and Jenkins helm as part of Terraform
3. Rename repos to fix type in the name (awesome instead of awsome) :)
4. Use Jenkins dedicated SSH for github (now using mine)
5. Add webhook for CI job
6. Add rolling update to helm - DONE


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
Access via: http://jenkins.toluna
Use Jenkins Kubernetes plugin to provision ephemeral agents
Configure k8s plugin to use Jenkins service toluna-jenkins:5000 for agents to connect to master
Install plugin Docker Pipeline: https://plugins.jenkins.io/docker-workflow

# Nginx Ingress
Namespace: toluna-system (k create ns toluna-system)
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx/
helm install --name ingress-nginx ingress-nginx/ingress-nginx