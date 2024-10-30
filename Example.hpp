#ifndef EXAMPLE_HPP
#define EXAMPLE_HPP

class Example {
        public:
                // Constructor
                Example();
                // Copy constructor
                Example(const Example& other);
                // Copy assignment operator
                Example& operator=(const Example& other);
                // Destructor
                ~Example();
        private:
    // Private members here
};

#endif // EXAMPLE_HPP
