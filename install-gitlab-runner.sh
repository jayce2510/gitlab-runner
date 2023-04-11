#run the compose file
docker-compose up -d

#register the runner inside the container
docker-compose exec gitlab-runner \
gitlab-runner register \
--non-interactive \
--url CHANGEME \
--registration-token CHANGEME \
--executor shell \
--description "CHANGEME" \
--tag-list CHANGEME \
--docker-image "gitlab/gitlab-runner:alpine" \
--docker-volumes /var/run/docker.sock:/var/run/docker.sock
