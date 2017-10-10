FROM golang:latest
LABEL maintainer "sysops <sysops@mediamath.com>"
WORKDIR /go
COPY godoc_repo /go/godoc_repo
CMD godoc -goroot /go/godoc_repo -http=:6060
EXPOSE 6060/tcp
