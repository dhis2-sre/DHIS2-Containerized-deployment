test-server:
	docker compose up --build server

clean:
	docker compose down --remove-orphans --volumes

ssh-copy-id:
	ssh-copy-id -p 2222 myuser@localhost
