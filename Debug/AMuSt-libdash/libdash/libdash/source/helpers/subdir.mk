################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash/source/helpers/BlockStream.cpp \
../AMuSt-libdash/libdash/libdash/source/helpers/Path.cpp \
../AMuSt-libdash/libdash/libdash/source/helpers/String.cpp \
../AMuSt-libdash/libdash/libdash/source/helpers/SyncedBlockStream.cpp \
../AMuSt-libdash/libdash/libdash/source/helpers/Time.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash/source/helpers/BlockStream.o \
./AMuSt-libdash/libdash/libdash/source/helpers/Path.o \
./AMuSt-libdash/libdash/libdash/source/helpers/String.o \
./AMuSt-libdash/libdash/libdash/source/helpers/SyncedBlockStream.o \
./AMuSt-libdash/libdash/libdash/source/helpers/Time.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash/source/helpers/BlockStream.d \
./AMuSt-libdash/libdash/libdash/source/helpers/Path.d \
./AMuSt-libdash/libdash/libdash/source/helpers/String.d \
./AMuSt-libdash/libdash/libdash/source/helpers/SyncedBlockStream.d \
./AMuSt-libdash/libdash/libdash/source/helpers/Time.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash/source/helpers/%.o: ../AMuSt-libdash/libdash/libdash/source/helpers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


