csrc = $(wildcard src/*.c)
ccsrc = $(wildcard src/*.cpp) 
obj = $(csrc:.c=.o) $(ccsrc:.cpp=.o)

LDFLAGS = -lsfml-graphics -lsfml-window -lsfml-system -std=c++17

mygame: $(obj)
	$(CXX) -o $@ $^ $(LDFLAGS)


.PHONY: clean
clean:
	rm -f $(obj) myprog
