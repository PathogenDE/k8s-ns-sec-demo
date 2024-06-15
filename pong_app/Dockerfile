# First stage: Build the application
FROM golang:alpine AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the application
RUN go build -o /pong-app

# Second stage: Create a minimal image
FROM scratch

# Copy the binary from the builder stage
COPY --from=builder /pong-app /pong-app

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["/pong-app"]