postgres: 
	docker run --name my_postgres -e POSTGRES_USER=nurmukhamednurkamal -e POSTGRES_PASSWORD=postgres -p 5433:5432 -d postgres:14 
createdb:
	docker exec -it my_postgres createdb --username=nurmukhamednurkamal --owner=nurmukhamednurkamal simple_bank
dropdb:
	docker exec -it my_postgres dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://nurmukhamednurkamal:postgres@localhost:5433?sslmode=disable" -verbose up 

migratedown:
	migrate -path db/migration -database "postgresql://nurmukhamednurkamal:postgres@localhost:5433?sslmode=disable" -verbose down

.PHONY: postgres createdb dropdb migrateup migratedown