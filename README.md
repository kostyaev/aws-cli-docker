# aws-cli-docker
Docker container for doing repeated aws commands like s3 sync

### Installation
- Set aws env variables (see Dockerfile) or pass them later to the container
- Build container `docker build -t aws-sync . `

### Running
Run container: 
`docker run --name s3-sync -v /opt/local/dir:/sync/ aws-cli s3 sync --region=eu-central-1 /sync/ s3://sync/`
Next time syncing will be simple as running command: `docker start s3-sync`
