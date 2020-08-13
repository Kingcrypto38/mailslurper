VERSION=v$(shell date -u +"%Y.%m.%d").1

.PHONY: docker release

docker:
	docker build --pull -t moov/mailslurper:$(VERSION) .
	docker tag moov/mailslurper:$(VERSION) moov/mailslurper:latest

release:
	docker push moov/mailslurper:$(VERSION)
