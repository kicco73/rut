app:
	git submodule update --init --recursive
	make -C udapi-java jar
	make -C graphdb-docker build-preload
	docker compose up -d

clean:
	docker compose down
	docker compose rm