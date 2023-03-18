# Deployment

To build or deploy this Dockerfile, you will need to build this Docker image with the appropriate environment variables passed in using the -e flag when running the docker build command. For example:
```
docker build --build-arg AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
             --build-arg AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
             --build-arg AWS_REGION=$AWS_REGION \
             -t my-ansible-image .
```