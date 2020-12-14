################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/UI/DASHPlayer.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/UI/QtSamplePlayerGui.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/UI/DASHPlayer.o \
./AMuSt-libdash/libdash/qtsampleplayer/UI/QtSamplePlayerGui.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/UI/DASHPlayer.d \
./AMuSt-libdash/libdash/qtsampleplayer/UI/QtSamplePlayerGui.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/UI/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/UI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


