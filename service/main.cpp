#include <iostream>
#include <assert.h>

#define Two
#define __NAME__ "abcd"

#define ASSERT(x) \
    if(!(x))\
    {\
    cout << x << endl;\
    cout << __FILE__ << endl;\
    }

using namespace std;
int main() {

    #ifndef Two
        cout << "two exists" << endl;
    #else
        cout << "Two" << endl;
    #endif

    cout << __FILE__ << endl;
    cout << __NAME__ << endl;
    std::cout << "Hello, World!" << std::endl;
    int b = 1;
    //assert(b==0);
    ASSERT(b);
    cout << "yes" << endl;
    return 0;
}