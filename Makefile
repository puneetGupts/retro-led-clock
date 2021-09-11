SERVICE = retro-led-clock
DEST= ./bin

build-mac: 
	env GOOS=darwin GOARCH=amd64 go build -o $(DEST)/$(SERVICE).
	chmod +x $(DEST)/$(SERVICE)

build-win: 
	env GOOS=windows GOARCH=amd64 go build -o $(DEST)/$(SERVICE).
	chmod +x $(DEST)/$(SERVICE)	

build: 
	env GOOS=linux GOARCH=amd64 go build  -o $(DEST)/$(SERVICE).
	chmod +x $(DEST)/$(SERVICE)	

run:
	$(DEST)/$(SERVICE)