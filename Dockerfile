FROM golang:latest
LABEL maintainer "sysops <sysops@mediamath.com>"
WORKDIR /go
RUN git clone https://github.com/pbaranovsky/godoc_repo.git 
CMD godoc -goroot /go/godoc_repo -http=:6060
EXPOSE 6060/tcp
