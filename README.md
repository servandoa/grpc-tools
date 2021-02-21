# grpc-tools

Docker image with a set of command line utilities for gRPC.

## Usage:

Ideally, in a docker-compose in which your services are running,
just load the image an mount a volume with the scripts pointing to /tests
then change the entry point to suit your needs.

### grpcurl
Utility to contact gRPC service, either by proto defintion files or using reflection.
See github.com/fullstorydev/grpcurl

### ghz
Utility to run performance tests.
See https://github.com/bojand/ghz