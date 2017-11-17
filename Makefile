deps:
		go get -u github.com/alecthomas/gometalinter
		gometalinter --install
		glide install

lint:
		gometalinter --config=gometalinter_config.json ./...

test: lint
		go test -cover -short -timeout=10s $$(glide novendor)