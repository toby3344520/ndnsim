################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash/source/metrics/HTTPTransaction.cpp \
../AMuSt-libdash/libdash/libdash/source/metrics/TCPConnection.cpp \
../AMuSt-libdash/libdash/libdash/source/metrics/ThroughputMeasurement.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash/source/metrics/HTTPTransaction.o \
./AMuSt-libdash/libdash/libdash/source/metrics/TCPConnection.o \
./AMuSt-libdash/libdash/libdash/source/metrics/ThroughputMeasurement.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash/source/metrics/HTTPTransaction.d \
./AMuSt-libdash/libdash/libdash/source/metrics/TCPConnection.d \
./AMuSt-libdash/libdash/libdash/source/metrics/ThroughputMeasurement.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash/source/metrics/%.o: ../AMuSt-libdash/libdash/libdash/source/metrics/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


