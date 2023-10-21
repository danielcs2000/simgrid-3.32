#include <iostream>
#include <string>
#include <stdio.h>

int main() {
    FILE* pipe = popen("python program_b.py", "w");
    if (!pipe) {
        std::cerr << "Error opening pipe to program B!" << std::endl;
        return 1;
    }

    std::string data_to_send = "Hello from C++!";
    fprintf(pipe, "%s\n", data_to_send.c_str());
    fflush(pipe);

    char buffer[128];
    if (fgets(buffer, sizeof(buffer), pipe) != NULL) {
        std::cout << "Response from program B: " << buffer;
    } else {
        std::cerr << "Error reading from program B!" << std::endl;
    }

    pclose(pipe);

    return 0;
}