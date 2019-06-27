run:
	docker-compose up
stop:
	docker-compose down

create-transactions:
	for i in $$(seq 1 10); do \
		echo "8961826348183648575610"$$(( RANDOM % 2 ))"201906220851"$${RANDOM}|nc -w1 localhost 8080; \
	done
