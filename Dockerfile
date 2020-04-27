FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y default-jre awscli

EXPOSE 8080

CMD ["sh" , "-c" , "aws s3 cp s3://umartahir-terraform-buckettestus-east-1/target/demo-0.0.1-SNAPSHOT.jar springbootproject.jar ; java -jar springbootproject.jar"]

