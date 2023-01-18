CC := g++
LDFLAGS := $(LDFLAGS) -ggdb3

%:
	$(CC) $(LDFLAGS) $@.cpp -o $@.exe

clean:
	rm -rf *.o
	rm -rf *.out
	rm -rf *.exe