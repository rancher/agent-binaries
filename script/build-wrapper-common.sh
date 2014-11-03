set -e

run_in_docker()
{
    LABEL=$(git rev-parse --abbrev-ref HEAD)
    IMAGE="build-$(basename $(pwd)):$LABEL"

    docker build -t $IMAGE .
    docker run -e CHOWN_USER="$(id -u):$(id -g)" -v $(pwd):/source $IMAGE $1
}

build_in_docker()
{
    run_in_docker /source/script/build-native
}

test_in_docker()
{
    run_in_docker /source/script/test-native
}

cd $(dirname $0)/..
