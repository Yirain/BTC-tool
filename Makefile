
CC          = gcc
TARGET      = btctool
DIR_HEADERS = ./include
DIR_BUILD   = ./build
DIR_SRC     = ./src
DIR_LIB     = ./lib

SRC         = $(wildcard ${DIR_SRC}/*.c)
LIB_CJSON   = $(wildcard ${DIR_LIB}/cJSON/*.c)
BUILD       = $(patsubst %.c,${DIR_BUILD}/%.o,$(notdir ${SRC}) $(notdir ${LIB_CJSON}))

$(TARGET) : $(BUILD)
	$(CC) $^ -o $@ -lssl -lcrypto -Wall -g

${DIR_BUILD}/%.o : ${DIR_SRC}/%.c
	$(CC) -c $^ -I ${DIR_HEADERS} -o $@ -Wall -g

${DIR_BUILD}/%.o : ${DIR_LIB}/cJSON/%.c
	$(CC) -c $^ -o $@ -Wall -g

clean:
	@rm ${DIR_BUILD}/*.o
	@rm btctool