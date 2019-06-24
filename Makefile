run:
	docker-compose up
stop:
	docker-compose down

create-transactions:
	for i in $$(seq 1 10); do \
		echo "89618263481836485756101201906220851"$${RANDOM}|nc localhost 8080; \
	done
