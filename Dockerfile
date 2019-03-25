FROM openjdk:13-alpine

ENV TRIMMOMATIC_VERSION 0.38
ENV TRIMMOMATIC_JAR_PATH /Trimmomatic-${TRIMMOMATIC_VERSION}
ENV TRIMMOMATIC_ADAPTERS_PATH /Trimmomatic-${TRIMMOMATIC_VERSION}/adapters

RUN apk add --no-cache wget zip && \
wget -q http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-${TRIMMOMATIC_VERSION}.zip && \
unzip Trimmomatic-${TRIMMOMATIC_VERSION}.zip && \
mv  Trimmomatic-${TRIMMOMATIC_VERSION}/trimmomatic-${TRIMMOMATIC_VERSION}.jar Trimmomatic-${TRIMMOMATIC_VERSION}/trimmomatic.jar && \
rm Trimmomatic-${TRIMMOMATIC_VERSION}.zip && \
apk del wget zip
