FROM public.ecr.aws/amazonlinux/amazonlinux:2


  #installing the aws cli

RUN yum install -y unzip curl && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install && \
  rm -rf awscliv2.zip aws


CMD [ "sleep", "3600" ]
