// Your First C++ Program

#include <iostream>

// invalid pointer 

float* invalid_ptr(float number){
	return &number;
}

int main() {
	// note that \n means CR or carriage return,
	// the equivalent of enter
    std::cout << "\nHello World!\n \n";
	// some simple math
	float b = 2.0;
	float c = 3.0;

    std::cout << c + b;
    std::cout << "\n\n";
	
	// raw_pointer
	float* c_ptr = &c;
	std::cout << c_ptr;
    std::cout << "\n\n";

	// invalid ptr (segfault)
	
	float* bad_ptr = invalid_ptr(3.0);
	std::cout << bad_ptr;
	float bad_num = *bad_ptr;



    return 0;
}

