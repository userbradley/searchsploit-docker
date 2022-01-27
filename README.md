# searchsploit in docker

This is to allow running Searchsploit in systems that contain anti-virus which would flag the program.
By running in a contianer we are able to sandbox and mitigate AV alerts.

# Running
## Step 1: Build

```bash
docker build . searchsploit:1
```

## Step 2: Searching

```bash
docker run -t searchsploit:1 Wordpress
```

## Step 3: Saving

```bash
docker run  -v $(pwd)/sync:/app/ -t searchsploit:1 -m php/webapps/47436.txt
```