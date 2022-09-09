container_name="serverless_dev"

build_container:
	@echo "Building ${container_name} container."
	docker buildx build -t ${container_name} -f Dockerfile . ${argument}

run_container:
	@echo "Running ${container_name} container."
	docker run -it -v `pwd`:/src -w /src ${container_name} /bin/bash