#!/bin/bash
cat << END
Description : This script is SKT eks demo script.
Usage       : For AWS EKS, Install kubectl, eksctl, awscli2 and deploy Cluster
OS          : amazon linux2
version     : "1.21"
Author      : "David Hyeshik Yoon" <david@2miles.co.kr>
END
K8s(){
echo "Install kubectl"
sudo curl --silent --location -o /usr/local/bin/kubectl \
   https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/kubectl
if [[ "${?}" -ne 0 ]]
then
        echo "Kubectl Install Failed."
        exit 1
fi
echo "Install kubectl success"
sudo chmod +x /usr/local/bin/kubectl
kubectl
sudo yum install -y jq
sudo yum install -y bash-completion
echo "Install eksctl"
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
if [[ "${?}" -ne 0 ]]
then
        echo "eksctl Install Failed."
        exit 1
fi
sudo mv -v /tmp/eksctl /usr/local/bin
eksctl version
}

getcluster()
{
    wget https://raw.githubusercontent.com/EleSangwon/Kubeboard/main/Iac/create-cluster.yaml
}
deploycluster()
{
    eksctl create cluster -f create-cluster.yaml
}

BAR="===================================="
echo "${BAR}"
echo "What do you want ? "
echo "${BAR}"
echo "[0] Install kubectl & eksctl"
echo "[1] Get EKS Cluster"
echo "[2] Deploy EKS Cluster"
echo "${BAR}"
echo -n "Please insert a key as you need = "
read choice
echo "${BAR}"
case $choice in
        0) K8s;;
        1) getcluster;;
        2) deploycluster;;
        *) echo "Bad choice"
                exit 1
esac
