CC = gcc
AR = ar rc

INC  = -Iinclude
LIB = libutils.a
CFLAGS = -ffunction-sections -O3 $(INC)
LIB_OBJS = file.o vector.o xwrap.o

all:$(LIB)

$(LIB):$(LIB_OBJS)
	$(AR) $@ $^

%.o:%.c
	$(CC) -o $@ $(CFLAGS) -c $< $(INC)

clean:
	rm -f $(LIB_OBJS) $(LIB)

