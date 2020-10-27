
build-spa:
	docker build -t xtreamr/xtreamr:nginx-spa spa/

build-proxy:
	docker build -t xtreamr/xtreamr:nginx-proxy proxy/

build: build-spa build-proxy

publish: build
	docker push xtreamr/xtreamr:nginx-spa
	docker push xtreamr/xtreamr:nginx-proxy
