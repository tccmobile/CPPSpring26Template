CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra
SRC = src/hello.cpp
BIN = bin/hello

all: $(BIN)

$(BIN): $(SRC)
	@mkdir -p bin
	$(CXX) $(CXXFLAGS) -o $(BIN) $(SRC)

run: $(BIN)
	./$(BIN)

clean:
	rm -rf bin/

.PHONY: all run clean