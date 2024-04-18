docker build -f Dockerfile-debugpy-sha --build-arg GIT_HASH=${GIT_HASH::7} -t asoldatenko/py-sample-app-debug .
docker run --rm asoldatenko/py-sample-app-debug env | grep GIT_HASH

GIT_HASH=80907a7