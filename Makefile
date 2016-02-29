# Makefile
CC = g++ 
CFLAGS = -Wall -g -std=c++11 
INCLUDES = -I/usr/local/libint/2.1.0-beta2/include  -I/usr/local/libint/2.1.0-beta2/include/libint2  -I/home/vultor/PROGRAMAS/eigen-eigen-07105f7124f9 
LFLAGS = -L/usr/local/libint/2.1.0-beta2/lib/  
LIBS = -lint2 
ADDFLAGS = -DSRCDATADIR=\ "/usr/local/libint/2.1.0-beta2/share/libint/2.1.0-beta2/basis\ " -fopenmp 
SRCS = hartree-fock++.cpp 
OBJS = $(SRCS:.cpp=.o) 
MAIN = corehf.exe 
.PHONY: depend clean 
all:    $(MAIN) 
	@echo  corehf.exe foi compilado com sucesso: 
$(MAIN): $(OBJS) 
	$(CC) $(CFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS) $(ADDFLAGS) 
.cpp.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@ $(ADDFLAGS) 
clean:: 
	$(RM) *.o *~ $(MAIN) 
depend: $(SRCS) 
	makedepend $(INCLUDES) $^ 

 
 # DO NOT DELETE THIS LINE -- make depend needs it 
