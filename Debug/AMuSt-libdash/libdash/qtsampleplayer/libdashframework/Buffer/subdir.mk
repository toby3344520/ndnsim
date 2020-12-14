################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/AudioChunk.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/MediaObjectBuffer.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/AudioChunk.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/MediaObjectBuffer.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/AudioChunk.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/MediaObjectBuffer.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Buffer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


