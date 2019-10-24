# make devdock-...

devdock-ps:
	docker-compose ps

devdock-view: memory
	docker-compose up --build

devdock-up: memory
	docker-compose up -d

devdock-build: memory
	docker-compose up --build -d

devdock-stop:
	docker-compose stop

devdock-pull:
	docker-compose pull

memory:
	sudo sysctl -w vm.max_map_count=262144
