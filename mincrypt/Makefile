CC = gcc
AR = ar rc

INC  = -Iinclude
LIB = libmincrypt.a
CFLAGS = -ffunction-sections -O3 $(INC)
LIB_OBJS = dsa_sig.o p256.o p256_ec.o p256_ecdsa.o rsa.o sha.o sha256.o

all:$(LIB)

$(LIB):$(LIB_OBJS)
	$(AR) $@ $^

%.o:%.c
	$(CC) -o $@ $(CFLAGS) -c $< $(INC)

clean:
	rm -f $(LIB_OBJS) $(LIB)

