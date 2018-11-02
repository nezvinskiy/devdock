# make devdock-...

devdock-ps:
	docker-compose ps

devdock-up: memory
	docker-compose up -d

devdock-build: memory
	docker-compose up --build -d

devdock-stop:
	docker-compose stop

memory:
	sudo sysctl -w vm.max_map_count=262144
