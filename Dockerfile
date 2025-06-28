# Use official GCC image as build environment
FROM gcc:13

# Set working directory
WORKDIR /app

# Copy source code to container
COPY . .

# Build the C++ application (assumes main.cpp exists)
RUN g++ -o app main.cpp

# Set default command to run the app
CMD ["./app"]