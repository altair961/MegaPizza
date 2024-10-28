# Get an image based on alpine  
FROM golang:alpine AS builder

# Set destination in the image for COPY
WORKDIR /build

# Copying from current folder to destination in image
COPY go.mod main.go ./

# Compile our Go application in a container
RUN go build -o hello main.go

# Get another image based on alpine image
FROM alpine

WORKDIR /build
# Copy from "builder" image to our second image
COPY --from=builder /build/hello /build/hello

# CMD [". /hello"]