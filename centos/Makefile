build:
	docker build -t rea1shane/centos:$(IMAGE_VERSION) --no-cache .

run:
	docker run --name $(CONTAINER_NAME) -d \
		--hostname $(CONTAINER_NAME) \
		-p $(SSH_PORT):22 \
		--privileged=true \
		$(ARGS) \
		rea1shane/centos:$(IMAGE_VERSION) \
		/usr/sbin/init
