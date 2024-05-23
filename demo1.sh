set -o xtrace

podman run -p 8000:8000 -p 5678:5678 asoldatenko/py-sample-app-debug
