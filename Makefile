CC = gcc
CFLAGS = -Wall -Wextra -g
LDFLAGS = -lcurl
TARGET = clirest

.PHONY: all clean rebuild

all: $(TARGET)

$(TARGET): clirest.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm -f $(TARGET)

install:
	sudo mv $(TARGET) /bin/

build: $(TARGET)

rebuild: clean all
