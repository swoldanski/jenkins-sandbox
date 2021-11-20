FROM alpine

RUN echo "Hello from Alpine"

WORKDIR /app

COPY . .

RUN env; pwd; ls -la
