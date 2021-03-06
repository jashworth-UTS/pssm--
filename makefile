CXX = g++

# compiler warning flags
WFLAGS = -Wall -W -Wextra -pedantic

# performance build flags
OFLAGS = -O3
CXXFLAGS = $(WFLAGS) $(OFLAGS)

# debug build flags
DBFLAGS = -ggdb -g
#CXXFLAGS = $(WFLAGS) $(DBFLAGS)

EXE = pssm++.linux
OBJECTFILES = main.o TargetSearch.o Hits.o PSSM.o Sequence.o util.o

# external libraries
LDLIBS = -lstdc++

# build targets
all: $(EXE)
$(EXE): $(OBJECTFILES)
	$(CXX) $(OBJECTFILES) $(LDLIBS) -o $(EXE)

clean:
	-rm *.o $(EXE)

.PHONY: tags
tags:
	ctags *.cpp *.h
