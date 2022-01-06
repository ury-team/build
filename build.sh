
# build release jar file
# cp -r ~/.m2 . 
git clone git@github.com:ury-team/rent-client.git client
git clone git@github.com:ury-team/rent-server.git server
DOCKER_BUILDKIT=1 docker build -o out .