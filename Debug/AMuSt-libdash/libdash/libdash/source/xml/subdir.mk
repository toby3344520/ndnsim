################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash/source/xml/DOMHelper.cpp \
../AMuSt-libdash/libdash/libdash/source/xml/DOMParser.cpp \
../AMuSt-libdash/libdash/libdash/source/xml/Node.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash/source/xml/DOMHelper.o \
./AMuSt-libdash/libdash/libdash/source/xml/DOMParser.o \
./AMuSt-libdash/libdash/libdash/source/xml/Node.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash/source/xml/DOMHelper.d \
./AMuSt-libdash/libdash/libdash/source/xml/DOMParser.d \
./AMuSt-libdash/libdash/libdash/source/xml/Node.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash/source/xml/%.o: ../AMuSt-libdash/libdash/libdash/source/xml/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


