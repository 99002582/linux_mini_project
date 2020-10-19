all	:	p1 p2
p1	:	library.c
		@echo "Creating object file for library"
		gcc -o library library.c -lpthread -lrt -o library.out
		./library.out

p2	:	user.c
		@echo "Creating object file for user"
		gcc -o user user.c -lpthread -lrt -o user.out
		./user.out
