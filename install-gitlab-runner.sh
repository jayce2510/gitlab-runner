#run the compose file
docker compose up -d

#register the runner inside the container
docker-compose exec gitlab-runner \                                                                                                          ─╯
gitlab-runner register \
--non-interactive \
--url https://gitlab.cali.vn/ \
--registration-token GR1348941sXrRxQdqj1i6wHUzX5xD \
--executor docker \
--description "docker-runner-219" \
--docker-image "gitlab/gitlab-runner:alpine" \
--docker-volumes /var/run/docker.sock:/var/run/docker.sock