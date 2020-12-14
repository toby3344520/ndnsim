################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaManager.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaStream.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaManager.o \
./AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaStream.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaManager.d \
./AMuSt-libdash/libdash/qtsampleplayer/Managers/MultimediaStream.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/Managers/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/Managers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


