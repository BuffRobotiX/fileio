#include <limits>
#include <string>
#include <fstream>
#include <iostream>

int main() {
    std::fstream file( "fileio.txt",
        std::ios::in | std::ios::out | std::ios::trunc  );
    file.exceptions( std::ios::failbit );   

    file << "hello\n" // << std::endl, not \n, if writing includes flushing
         << "world\n";

    file.seekg( 0 )
        .ignore( std::numeric_limits< std::streamsize >::max(), '\n' );
    std::string input_string;
    std::getline( file, input_string );

    std::cout << input_string << '\n';
}

// or somewhat less pedantically,

/*
#include <string>
#include <fstream>
#include <iostream>
using namespace std;

int main() {
    fstream file( "fileio.txt", ios::in | ios::out | ios::trunc  );
    file.exceptions( ios::failbit );   

    file << "hello" << endl
         << "world" << endl;

    file.seekg( 0 ).ignore( 10000, '\n' );
    string input_string;
    getline( file, input_string );

    cout << input_string << endl;
}
*/
