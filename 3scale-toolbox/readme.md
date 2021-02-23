  

### To deploy on docker hub

  

    $docker login <CREDENTIALS>

    $docker build --no-cache -t jenkins-3scale-toolbox:<TAG> .
    
    $docker tag jenkins-3scale-toolbox:<TAG>  <repository>/jenkins-3scale-toolbox:$1
    
    $docker push <repository>/jenkins-3scale-toolbox:<TAG>

  

OR

  

./build.sh -v <TAG> -r <REPOSITORY>

    $docker login <CREDENTIALS>
    $./build.sh -v <TAG> -r <REPOSITORY>
