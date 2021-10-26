Mock server
============

Mock server based on Node `Express` and `connect-api-mocker`. It can run on localhost or as a Docker image.

## Run on localhost

```
npm run start
```

## How to add mocks?

Follow the directory structure of [connect-api-mocker](https://github.com/muratcorlu/connect-api-mocker#directory-structure) with some changes in mind. Or extract responses from file (.har) by [har-to-mocks](https://github.com/peterknezek/har-to-mocks)

Example REST service: `GET /messages`

Directory Structure:

```
_ mocks
 \_ messages
 \_ GET.json
```

## Environment variables

* `MOCKS_PORT` - server port - defaults to `8080`


# Docker

## Build Docker image

```
docker build --pull --rm -f "Dockerfile" -t dockermockserver:latest "."
```

## Run Docker image

```
docker run --rm -d -p 8080:8080/tcp dockermockserver:latest
```