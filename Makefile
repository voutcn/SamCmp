CXXFLAGS = -g -O2 -Wall -std=c++0x -static-libgcc
LIB = -lm -lz -lpthread

ifeq "4.5" "$(word 1, $(sort 4.5 $(GCC_VER)))"
	CXXFLAGS += -static-libstdc++
endif

CXXFLAGS = -g -O2 -Wall -Wno-unused-function -Wno-array-bounds -D__STDC_FORMAT_MACROS -funroll-loops -std=c++0x -static-libgcc
all: samcmp

samcmp: samcmp.cpp
	$(CXX) $(CXXFLAGS) samcmp.cpp -o samcmp