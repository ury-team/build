# build release jar file
# cp -r ~/.m2 . 
git clone git@github.com:ury-team/rent-client.git client
git clone git@github.com:ury-team/rent-server.git server
DOCKER_BUILDKIT=1 docker build --output type=local,dest=./app .
cp app/billing.jar .
if [  -f /usr/bin/md5sum  ]; then
    md5sum -b  billing.jar | awk '//{print $1}' > md5.txt
else
    md5 < billing.jar  > md5.txt
fi
rm -rf app client server
