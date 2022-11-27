all: xmlparser.exe

xmlparser.exe: xmlparser.o
	g++ -o xmlparser.exe xmlparser.o

xmlparser.o: XMLparse.cpp
	g++ -c XMLparse.cpp pugixml.hpp pugiconfig.hpp

clean:
	rm xmlparser.o xmlparser.exe
