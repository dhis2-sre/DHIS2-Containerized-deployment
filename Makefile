launch-server:
	docker compose up --build server

ssh-copy-id:
	ssh-copy-id -p 2222 localhost
