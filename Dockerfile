FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache curl unzip

RUN curl -L https://github.com/pocketbase/pocketbase/releases/download/v0.21.2/pocketbase_0.21.2_linux_amd64.zip -o pb.zip \
  && unzip pb.zip \
  && rm pb.zip

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
