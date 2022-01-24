# docker-openshift-mirror
CLI tools required for mirroring OpenShift images

## Build

This image is built and pushed to GitHub Container Registry (ghcr.io). It is built using GitHub actions. 

If you want to build the image and play with it locally, this can just be done using a codespace:

```
docker build -t test .
docker run -it test
```