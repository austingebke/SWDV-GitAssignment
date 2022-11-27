all: xmlparser.exe

xmlparser.o: XMLparse.cpp
	g++ -c XMLparse.cpp pugixml.hpp pugiconfig.hpp

xmlparser.exe: xmlparser.o
	g++ -o xmlparser.exe xmlparser.o

clean:
	rm xmlparser.o xmlparser.exe
