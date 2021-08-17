#1st build
#FROM golang:latest
#WORKDIR docker-turorial


#COPY . .

#RUN CGO_ENABLED=0 GOOS=linux go install ./

#2nd Stage

#FROM alpine:latest
#WORKDIR /app/

#COPY --from=0 ./ ./binary

#CMD ./binary

FROM  golang:alpine

WORKDIR  /

COPY  .  ./

RUN go build -o  /docker-tutorial

#EXPOSE 1392

ENTRYPOINT [ "/docker-tutorial" ]

