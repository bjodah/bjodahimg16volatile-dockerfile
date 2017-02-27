IMAGE=${1:-bjodahimg16volatile}
TAG=${2:-latest}
ABS_REPO_PATH=$(unset CDPATH && cd "$(dirname "$0")/.." && echo $PWD)
docker build -t $IMAGE:$TAG ${ABS_REPO_PATH}/environment/

