FROM deepexi/java:v0.0.1

WORKDIR /home


COPY ./test-sc-1-13-provider/target/app.jar /home

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
