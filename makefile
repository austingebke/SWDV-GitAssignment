all: xmlparser.exe

xmlparser.exe: XMLparse.o
	g++ -o xmlparser.exe XMLparse.o

XMLparse.o: XMLparse.cpp
	g++ -c XMLparse.cpp pugixml.hpp pugiconfig.hpp

clean:
	rm XMLparse.o xmlparser.exe
