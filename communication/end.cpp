#include <iostream>
#include <curl/curl.h>

int main() {
    // Initialize libcurl
    CURL *curl;
    CURLcode res;

    curl = curl_easy_init();
    if (!curl) {
        std::cerr << "Curl initialization failed." << std::endl;
        return 1;
    }

    // Set the target URL
    const char *url = "http://127.0.0.1:5000"; // Replace with your target URL

    // Set the POST data
    std::string post_data = "This is a message with spaces";

    std::string encodedData = curl_easy_escape(curl, post_data.c_str(), post_data.length());
    encodedData = "data=" + encodedData;

    std::cout << encodedData;
    if (!encodedData.empty()) {
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, encodedData.c_str());
    }

    // Set the POST request options
    curl_easy_setopt(curl, CURLOPT_URL, url);

    // Perform the HTTP POST request
    res = curl_easy_perform(curl);

    // Check for errors
    if (res != CURLE_OK) {
        std::cerr << "Curl request failed: " << curl_easy_strerror(res) << std::endl;
    } else {
        std::cout << "HTTP POST request sent successfully." << std::endl;
    }

    // Cleanup
    curl_easy_cleanup(curl);

    return 0;
}