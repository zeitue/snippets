#include <iostream>
#include <string>
#include <limits>

/*
 * Usage:  number =
 *			getInt("Please enter a number between 1 & 5: ", "Invalid", 1 ,5);
 */
int getInt(std::string prompt = "", std::string failed_message = "",
		const int min = 0, const int max = 0) {
	int number = 0;
	for (;;) {
		std::cout << prompt;
		std::cin >> number;
		if (std::cin.fail()) {
			std::cout << failed_message << std::endl;
			std::cin.clear();
			std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
		} else if (max < number || number < min) {
			std::cout << number << " is not in the range of " << min << " and "
					<< max << std::endl;
		} else
			return number;
	}
}
