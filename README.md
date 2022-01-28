# searchsploit in docker

This is to allow running Searchsploit in systems that contain anti-virus which would flag the program.
By running in a contianer we are able to sandbox and mitigate AV alerts.

# Running
## Step 1: Build
You do not have to build, I have images avalible at:

https://hub.docker.com/repository/docker/userbradley/searchsploit

If you deciede to do this, please pull the image and use like below

```bash
docker run --rm -t userbradley/searchsploit:alpine-0.0.1 Wordpress
```
### Apline
```bash
docker build -f Dockerfile-alpine -t searchsploit:alpine .
```

### Ubuntu
```bash
docker build -f Dockerfile -t searchsploit:ubuntu .
```


## Step 2: Searching

```bash
docker run -t searchsploit:alpine Wordpress
```

## Step 3: Saving

```bash
docker run  -v $(pwd)/sync:/app/ -t searchsploit:alpine -m php/webapps/47436.txt
```

## Making an alias

If you want to call this as `searchsploit` you can do the below

```bash
alias searchsploit="docker run  -v $(pwd)/sync:/app/ -t searchsploit:alpine"
```

Note: this will only work in your current directory.