FROM centos:7
LABEL maintainer=pixiu name=pixiu

WORKDIR /root

COPY kubernetes.repo /etc/yum.repos.d/kubernetes.repo
COPY get_helm.sh get_helm.sh

RUN VERIFY_CHECKSUM=false ./get_helm.sh \
    && rm -rf get_helm.sh \
    && helm completion bash > /etc/bash_completion.d/helm

RUN yum install -y kubectl bash-completion \
    && yum clean all && rm -rf /var/cache/yum
