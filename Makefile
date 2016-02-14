all: clean build


clean:
	rm -rf out


HDR_DIR = include/
SRC_DIR = src/

TARGET_DIR = out/
TARGET = boson.exe

SRC_FILES = main.cpp

build:  $(SRC_FILES)
	mkdir -p $(TARGET_DIR)
	g++  $(SRC_FILES) -I $(BOOST_ROOT) -I $(HDR_DIR) -o $()$(TARGET_DIR)$(TARGET)