################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash/source/network/AbstractChunk.cpp \
../AMuSt-libdash/libdash/libdash/source/network/DownloadStateManager.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash/source/network/AbstractChunk.o \
./AMuSt-libdash/libdash/libdash/source/network/DownloadStateManager.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash/source/network/AbstractChunk.d \
./AMuSt-libdash/libdash/libdash/source/network/DownloadStateManager.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash/source/network/%.o: ../AMuSt-libdash/libdash/libdash/source/network/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


