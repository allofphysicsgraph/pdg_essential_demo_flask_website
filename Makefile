# Ben Payne
# Physics Derivation Graph
# https://allofphysics.com

webserver_image=demo_flask

container=docker
#container=podman

#
.PHONY: help docker

help:
	@echo "make help"
	@echo "      this message"
	@echo "==== Targets outside container ===="
	@echo ""
	@echo "make container"
	@echo "      build image and then enter container shell"
	@echo ""
	@echo "make container_build"
	@echo "      build image"
	@echo ""
	@echo "make container_live"
	@echo "      enter container shell"
	@echo ""
	@echo "make up"
	@echo "      build and run $(container)"
	@echo ""

# create and start the webserver. This will build the Docker image if that's needed
up:
	if (! $(container) stats --no-stream ); then  open /Applications/Docker.app; while (! $(container) stats --no-stream ); do    echo "Waiting for Docker to launch...";  sleep 1; done; fi;
	$(container) ps
	if [ `$(container) ps | wc -l` -gt 1 ]; then \
	       	$(container) kill $$($(container) ps -q); \
		fi
	$(container) ps
	$(container) run --rm \
                -w /code \
                -p 5000:5000 \
                $(webserver_image) python3 pdg_app.py

#                --expose 5000 -p 5000:5000 \


container: container_build container_live

# https://docs.docker.com/build/building/multi-platform/
container_build:
#	$(container) build --platform linux/amd64 -t $(webserver_image) .
	$(container) build -t $(webserver_image) .

container_live:
	$(container) run -it --rm \
                -v `pwd`:/scratch -w /scratch/ \
                --user $$(id -u):$$(id -g) \
                $(webserver_image) /bin/bash


#EOF
