IMAGE_TAG = latest

build:
	docker build -t rea1shane/centos:$(IMAGE_TAG) --no-cache .

run:
	docker run --name $(CONTAINER_NAME) -d \
		--hostname $(CONTAINER_NAME) \
		-p $(SSH_PORT):22 \
		--privileged=true \
		$(ARGS) \
		rea1shane/centos:$(IMAGE_TAG) \
		/usr/sbin/init
