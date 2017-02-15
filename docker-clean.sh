# Delete all stopped containers (including data-only containers)
sudo docker rm $(docker ps -a -q)

# Delete all 'untagged/dangling' (<none>) images
sudo docker rmi $(docker images -q -f dangling=true)

