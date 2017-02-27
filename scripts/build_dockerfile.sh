IMAGE=${1:-bjodahimg16volatile}
TAG=${2:-latest}
docker build -t $IMAGE:$TAG environment/

