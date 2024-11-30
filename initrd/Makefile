CC = gcc
CFLAGS =
TARGET = initrd_generator
SRC = initrd_generator.c

install: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: install clean