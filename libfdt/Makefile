CC = gcc
AR = ar rc

INC  = -Iinclude
LIB = libfdt.a
CFLAGS = -ffunction-sections -O3 $(INC)
LIB_OBJS = fdt.o fdt_ro.o fdt_wip.o fdt_sw.o fdt_rw.o fdt_strerror.o fdt_empty_tree.o \
fdt_addresses.o fdt_overlay.o

all:$(LIB)

$(LIB):$(LIB_OBJS)
	$(AR) $@ $^

%.o:%.c
	$(CC) -o $@ $(CFLAGS) -c $< $(INC)

clean:
	rm -f $(LIB_OBJS) $(LIB)

