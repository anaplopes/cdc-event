.PHONY: status_connect
status_connect:
	curl -H "Accept:application/json" localhost:8083/

.PHONY: list_connectors
list_connectors:
	curl -H "Accept:application/json" localhost:8083/connectors/

.PHONY: create_connector
create_connector:
	curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" localhost:8083/connectors/ -d $(JSON)

.PHONY: view_connector
view_connector:
	curl -i -X GET -H "Accept:application/json" localhost:8083/connectors/$(CONN_NAME)
