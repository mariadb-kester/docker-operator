FROM alpine:latest

ARG terraformVersion="1.9.5"

RUN apk update && apk upgrade
RUN apk add curl wget unzip libc6-compat make helm doctl

#Install Kubectl
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" 
RUN chmod +x kubectl 
RUN mv kubectl /usr/local/bin/ 

#Terraform
RUN wget https://releases.hashicorp.com/terraform/${terraformVersion}/terraform_${terraformVersion}_linux_amd64.zip
RUN unzip terraform_${terraformVersion}_linux_amd64.zip -d /usr/local/bin/ 
RUN chmod +x /usr/local/bin/terraform 

WORKDIR /terraform
COPY ./terraform /terraform
COPY .env /terraform/
COPY operator /terraform/

# RUN make init-demo
# RUN make plan-demo

ENTRYPOINT ["tail", "-f", "/dev/null"]