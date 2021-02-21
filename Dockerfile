FROM golang:1.15.3-alpine3.12 AS builder
RUN apk update && apk add --no-cache ca-certificates git gcc musl-dev
WORKDIR $GOPATH/src/mypackage/myapp/
# Using go get.
RUN go get github.com/fullstorydev/grpcurl/... && go install github.com/fullstorydev/grpcurl/cmd/grpcurl
RUN git clone https://github.com/bojand/ghz && cd ghz/cmd/ghz && go install .

FROM alpine:3.12
COPY --from=builder /go/bin/* /usr/bin/
WORKDIR /tests
ENTRYPOINT  "/bin/sh" 