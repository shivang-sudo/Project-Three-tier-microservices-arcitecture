# Stage 1 - BUILD
FROM golang:1.23 AS build
WORKDIR /app
COPY *.go .
RUN go mod init dispatch && go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Stage 2 - RUN
FROM alpine:latest
WORKDIR /app
EXPOSE 8080
COPY --from=build /app/main .
CMD ["./main"]
