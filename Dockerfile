FROM adoptopenjdk/openjdk11:jre AS builder

FROM marketplace.gcr.io/google/ubuntu1804

COPY --from=builder ./opt/java/openjdk ./opt/java/openjdk

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' 

ENV JAVA_HOME=/opt/java/openjdk \
    PATH="/opt/java/openjdk/bin:$PATH"

CMD ["/bin/bash"]