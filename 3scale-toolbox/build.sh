 #!/bin/bash

echo "Version $1"



while getopts v:r:i:s:d: flag

do
        case "${flag}" in

                v) VERSION=${OPTARG}
                
                        ;;
                r) REPOSITORY=${OPTARG}                

                        ;;
                *) exit 0;
                ;;
        esac
done

if [ -z $REPOSITORY ]
then 
    echo "Repository: roglusa"
    REPOSITORY="roglusa"    
else
    echo "Repository: $REPOSITORY"
fi

if [ -z $VERSION ]
then 
    echo "Versions is mandatory -v"
    exit 0;
fi
docker build --no-cache -t jenkins-3scale-toolbox:$VERSION . 
docker tag jenkins-3scale-toolbox:$VERSION $REPOSITORY/jenkins-3scale-toolbox:$VERSION
docker push $REPOSITORY/jenkins-3scale-toolbox:$VERSION

