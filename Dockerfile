
FROM node:latest

ENV TERRAFORM_VERSION 0.12.20

RUN wget -O terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  unzip terraform.zip -d /usr/local/bin && \
  rm -f terraform.zip

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["node"]