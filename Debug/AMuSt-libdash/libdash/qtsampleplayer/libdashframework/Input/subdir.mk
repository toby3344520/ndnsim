################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHManager.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHReceiver.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObject.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObjectDecoder.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHManager.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHReceiver.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObject.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObjectDecoder.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHManager.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/DASHReceiver.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObject.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/MediaObjectDecoder.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Input/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


