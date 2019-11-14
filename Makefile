# make devdock-...

init: devdock-stop devdock-pull devdock-build

devdock-ps:
	docker-compose ps

devdock-view: memory
	docker-compose up --build

devdock-up: memory
	docker-compose up -d

devdock-build: memory
	docker-compose up --build -d

devdock-pull:
	docker-compose pull

devdock-stop:
	docker-compose stop

devdock-pull:
	docker-compose pull

memory:
	sudo sysctl -w vm.max_map_count=262144
