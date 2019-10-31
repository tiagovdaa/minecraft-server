#!/bin/bash

docker run -d \
  -p 19132:19132/UDP \
  -v bedrock-worlds:/opt/bedrock \
  mojang/bedrock
