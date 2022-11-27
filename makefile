all: xmlparser.exe

xmlparser.exe: xmlparser.o
	g++ -o xmlparser.exe xmlparser.o

xmlparser.o: xmlparser.cpp
	g++ -c xmlparser.cpp pugixml.hpp pugiconfig.hpp

clean:
	rm xmlparser.o xmlparser.exe
