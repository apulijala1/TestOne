FROM golang:latest
WORKDIR /myapp
COPY welcome.go .
RUN   go mod init myapp  && go build -o welcome .
ENTRYPOINT [ "./welcome" ]