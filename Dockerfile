# use an existing docker image as a base
FROM alpine

# Download and install dependency
RUN apk add --update redis
RUN apk add --update python3

# Tell the image what to do when it is run
# as a container
CMD ["redis-server"]