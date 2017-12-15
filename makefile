CC = g++
CFLAGS = -Wall -fprofile-arcs -ftest-coverage
EXEC_NAME = hello
INCLUDES = 
LIBS = -lgcov
OBJ_FILES = hello.o

all: $(EXEC_NAME)

clean:
	rm $(EXEC_NAME) $(OBJ_FILES)

$(EXEC_NAME): $(OBJ_FILES)
	$(CC) -o $(EXEC_NAME) $(OBJ_FILES) $(LIBS)

%.o: %.cpp
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<
