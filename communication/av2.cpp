#include <iostream>
#include <string>
#include <cstdio>
#include <cstdlib>
#include <csignal>
#include <unistd.h>
int pipe_fd[2]; // Pipe file descriptors


volatile sig_atomic_t received_signal = 0;

// Signal handler function
void signal_handler(int signum) {
    std::cout << "Received signal " << signum << " from program B. HANDLER" << std::endl;
    received_signal = signum;

    char buffer[256];
    int bytes_read = read(pipe_fd[0], buffer, sizeof(buffer));

    if (bytes_read > 0) {
        buffer[bytes_read] = '\0';
        std::cout << "Received data from program B: " << buffer << std::endl;
    }
}

int main() {
    // Register the signal handler
    signal(SIGUSR1, signal_handler);
    pipe(pipe_fd);

    pid_t pid = getpid();

    std::cout << "PID of the current C++ program: " << pid << std::endl;

    // send pid
    FILE* pipe = popen("python3 program_b.py", "w");
    if (!pipe) {
        std::cerr << "Error opening pipe to program B!" << std::endl;
        return 1;
    }
    std::string data_to_send = std::to_string(pid);
    fprintf(pipe, "%s\n", data_to_send.c_str());
    fflush(pipe);

    // Sleep for a while before the next iteration (e.g., 5 seconds)

    while (true ) {

        std::string data_to_send = "Hello from C++!";
        
        // Send data to program B
        fprintf(pipe, "%s\n", data_to_send.c_str());
        fflush(pipe);

        // Check if a signal was received from program B
        if (received_signal != 0) {
            std::cout << "Received signal " << received_signal << " from program B." << std::endl;
            received_signal = 0;  // Reset the signal flag
        }

        // Close the pipe
        // Sleep for a while before the next iteration (e.g., 5 seconds)
        sleep(5);
    }

    pclose(pipe);

    return 0;
}