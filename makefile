all: xmlparser.exe

xmlparser.exe: xmlparser.o
	g++ -o xmlparser.exe xmlparser.o

xmlparser.o: XMLparser.cpp
	g++ -c XMLparser.cpp pugixml.hpp pugiconfig.hpp

clean:
	rm xmlparser.o xmlparser.exe
