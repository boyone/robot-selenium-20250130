start-standalone:
	docker compose -f docker-compose-standalone.yml up -d

stop-standalone:
	docker compose -f docker-compose-standalone.yml down

start-hub-nodes:
	docker compose -f docker-compose-v3.yml up -d

stop-hub-nodes:
	docker compose -f docker-compose-v3.yml down

start-swarm-hub-nodes:
	docker swarm init
	docker stack deploy -c docker-compose-v3-swarm.yml selenium-grid

stop-swarm-hub-nodes:
	docker stack rm selenium-grid
	docker swarm leave --force

start-full-grid:
	docker compose -f docker-compose-v3-full-grid.yml up -d

stop-full-grid:
	docker compose -f docker-compose-v3-full-grid.yml down

open-grid-console:
	open http://localhost:4444/grid/console

open-grid-webdriver:
	open http://localhost:4444/wd/hub