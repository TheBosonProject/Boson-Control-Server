
#macros

#binary out put dir
OUT_DIR = out/

#target of the application
TARGET = boson-control-server.exe

#directories containing the source files.
 

#Default make command.
all: clean get-deps build

ver: 
	@go version
clean: ver
	@echo "removing build directory.."
	@rm -rf out/
	@echo "build directoy removed."

build: ver $(SRC_DIR)
	@echo "creating build directory.."
	@mkdir -p $(OUT_DIR)
	@echo "building binary.."
	@go build -o $(OUT_DIR)$(TARGET)
	@echo "build command complete"

test: ver
	@echo "Starting go tests.."
	go test $(SRC_DIR)
	@echo "tests completed."

setup:
	@echo "preparing project..."
	./ci_scripts/pre_install.sh
	@echo "project prepared.\nRun 'make' to build the project"

get-deps:
	@echo "installing dependencies..."
	@$(GOPATH)/bin/glide install