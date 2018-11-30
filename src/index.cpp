#include <iostream>
#include <Magick++.h>

using namespace std;
using namespace Magick;

bugfix from notccie1

int main(int argc, char **argv) {
  InitializeMagick(*argv);
  Image image;
  try {
    image.read(argv[1]);
  } 
  catch( Exception &error_ ) {
    cout << "Caught exception: " << error_.what() << endl; 
      return 1; 
  } 
  int x = image.columns();
  cout<<"your picture's width is "<< x << "px"<<endl;
  return 0; 
}
