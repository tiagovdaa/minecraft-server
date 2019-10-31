FROM ubuntu

RUN mkdir /opt/bedrock
COPY . /opt/bedrock

RUN apt-get update
RUN apt-get install -y libcurl4

ENV LD_LIBRARY_PATH /opt/bedrock
VOLUME ["/opt/bedrock"]

CMD cd /opt/bedrock && /opt/bedrock/bedrock_server
