container:
	git submodule update --init --recursive
	make -C udapi-java jar
	docker compose up -d

clean:
	docker compose down
	docker compose rm