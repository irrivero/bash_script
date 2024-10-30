#!/bin/bash

# Check if a class name was provided as an argument
if [ -z "$1" ]; then
  echo "Please provide a class name."
  echo "Usage: ./create_class.sh ClassName"
  exit 1
fi

# Class name (first letter capitalized)
class_name="$1"

# File names
header_file="${class_name}.hpp"
source_file="${class_name}.cpp"

# Header guard (include guard)
header_guard=$(echo "$class_name" | tr '[:lower:]' '[:upper:]')_HPP

# Create the .hpp file with the basic class structure
cat <<EOF > "$header_file"
#ifndef ${header_guard}
#define ${header_guard}

class ${class_name} {
        public:
                // Constructor
                ${class_name}();
                // Copy constructor
                ${class_name}(const ${class_name}& other);
                // Copy assignment operator
                ${class_name}& operator=(const ${class_name}& other);
                // Destructor
                ~${class_name}();
        private:
    // Private members here
};

#endif // ${header_guard}
EOF

# Create the .cpp file with the basic class method implementations
cat <<EOF > "$source_file"
#include "${header_file}"

// Constructor
${class_name}::${class_name}() {
    // Initialization
}

// Copy constructor
${class_name}::${class_name}(const ${class_name}& other) {
    // Copy members from 'other' if needed
}

// Copy assignment operator
${class_name}& ${class_name}::operator=(const ${class_name}& other) {
    if (this != &other) {
        // Assign members from 'other'
    }
    return *this;
}

// Destructor
${class_name}::~${class_name}() {
    // Clean up resources if necessary
}
EOF

echo "Files ${header_file} and ${source_file} created successfully."

