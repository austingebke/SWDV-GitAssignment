#include "pugixml.hpp"
#include <iostream>
#include <fstream>
#include <string>
using namespace std;
using namespace pugi;
int main(){
    char file_name[30];
    cout<<"Enter xml file name to be read: ";
    cin>>file_name;
    xml_document doc;
    doc.load_file(file_name);
    pugi:: xpath_query book_query("/catalog/book");
    pugi:: xpath_query title_query("title/text()");
    pugi:: xpath_node_set xpath_books=doc.select_nodes(book_query);
    for(xpath_node xpath_book: xpath_books){
        pugi:: xml_node book=xpath_book.node();
        pugi:: xml_node title=book.select_node(title_query).node();
        cout<<"Book title: "<<title.value()<<endl;
    }
    cout<<"Finished"<<endl;
}
