# Makefile for lab4 stream-socket server/client program

CC = gcc
OBJCSS = server_client4.c

CFLAGS = -g -Wall

#setup for system
nLIBS = 

all: client4

client4: $(OBJCSS)
	$(CC) $(CFLAGS) -o $@ $(OBJCSS) $(LIBS)

clean:
	rm client4