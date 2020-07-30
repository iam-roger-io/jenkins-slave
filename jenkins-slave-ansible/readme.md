

### To deploy on docker hub

    docker build -t jenkins-ansible .
    docker tag <image id> <repo>/<name>:<tag>
    docker push <repo>/<name>:<tag>
