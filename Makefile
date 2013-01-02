CCFLAG=
main:main.o br1.o test.o
	gcc $(CCFLAG) -o $@ $^
%.o:%.c
	gcc $(CCFLAG) -c -o $@ $<

.PHONY: clean
clean:
	rm -fr *.o main
