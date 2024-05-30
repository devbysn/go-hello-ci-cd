# Getting Golang base image
FROM golang:1.22-alpine

# Set the current working directory inside the container
WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . .

# Build the Go application
RUN go build -o server .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./server"]
