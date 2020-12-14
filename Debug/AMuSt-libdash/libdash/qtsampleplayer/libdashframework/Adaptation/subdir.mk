################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AbstractAdaptationLogic.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AdaptationLogicFactory.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AlwaysLowestLogic.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/ManualAdaptation.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AbstractAdaptationLogic.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AdaptationLogicFactory.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AlwaysLowestLogic.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/ManualAdaptation.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AbstractAdaptationLogic.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AdaptationLogicFactory.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/AlwaysLowestLogic.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/ManualAdaptation.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/Adaptation/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


