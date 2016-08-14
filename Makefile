
#macros

#binary out put dir
OUT_DIR = out/

#target of the application
TARGET = boson-control-server.exe

#directories containing the source files.
SRC_DIR = handlers/ logger/ 


all: clean build

ver: 
	@go version
clean:
	@echo "removing build directory.."
	rm -rf out/
	@echo "build directoy removed"

build: $(SRC_DIR)
	@echo "creating build directory.."
	@mkdir -p $(OUT_DIR)
	@eho "building binary.."
	@go build -o $(OUT_DIR)$(TARGET)
	@echo "build command complete"

test:
	@echo "Starting go tests.."
	go test $(SRC_DIR)
	@echo "tests completed."
