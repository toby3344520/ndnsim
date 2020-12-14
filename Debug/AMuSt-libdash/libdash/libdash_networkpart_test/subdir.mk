################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash_networkpart_test/HTTPChunk.cpp \
../AMuSt-libdash/libdash/libdash_networkpart_test/HTTPConnection.cpp \
../AMuSt-libdash/libdash/libdash_networkpart_test/PersistentHTTPConnection.cpp \
../AMuSt-libdash/libdash/libdash_networkpart_test/TestChunk.cpp \
../AMuSt-libdash/libdash/libdash_networkpart_test/libdash_networkpart_test.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash_networkpart_test/HTTPChunk.o \
./AMuSt-libdash/libdash/libdash_networkpart_test/HTTPConnection.o \
./AMuSt-libdash/libdash/libdash_networkpart_test/PersistentHTTPConnection.o \
./AMuSt-libdash/libdash/libdash_networkpart_test/TestChunk.o \
./AMuSt-libdash/libdash/libdash_networkpart_test/libdash_networkpart_test.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash_networkpart_test/HTTPChunk.d \
./AMuSt-libdash/libdash/libdash_networkpart_test/HTTPConnection.d \
./AMuSt-libdash/libdash/libdash_networkpart_test/PersistentHTTPConnection.d \
./AMuSt-libdash/libdash/libdash_networkpart_test/TestChunk.d \
./AMuSt-libdash/libdash/libdash_networkpart_test/libdash_networkpart_test.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash_networkpart_test/%.o: ../AMuSt-libdash/libdash/libdash_networkpart_test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


