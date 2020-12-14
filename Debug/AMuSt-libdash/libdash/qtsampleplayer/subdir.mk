################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/main.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/main.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/main.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


