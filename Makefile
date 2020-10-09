CC = gcc
AR = ar rcv

INC = -Imincrypt/include -Iutils/include -Ilibfdt/include
CFLAGS = -ffunction-sections -O3 $(INC)
LDFLAGS = -W

OBJECTS = cpio.o main.o bootimg.o hexpatch.o compress.o format.o dtb.o ramdisk.o pattern.o

all:libmincrypt.a libutils.a libfdt.a magiskboot

libfdt.a:
	make -C libfdt

libutils.a:
	make -C utils

libmincrypt.a:
	make -C mincrypt

magiskboot: $(OBJECTS) Makefile
	$(CC) $(OBJECTS) $(LDFLAGS) -Lmincrypt -Lutils -Llibfdt -lmincrypt -lutils -lfdt -lz -llzma -llz4 -lbz2 -lpthread -o $@

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -f *.o
	rm -f magiskboot
	make -C utils clean
	make -C libfdt clean
	make -C mincrypt clean

