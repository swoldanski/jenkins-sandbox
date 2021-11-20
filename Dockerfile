FROM alpine

RUN echo "Hello from Alpine"

WORKDIR /app

COPY ./app .

RUN env; pwd; ls -laR
