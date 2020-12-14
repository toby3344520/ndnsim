################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/netanim/examples/colors-link-description.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/dumbbell-animation.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/grid-animation.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/resources-counters.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/star-animation.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/uan-animation.cc \
../ns3.25_ndnsim2.6/src/netanim/examples/wireless-animation.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/netanim/examples/colors-link-description.d \
./ns3.25_ndnsim2.6/src/netanim/examples/dumbbell-animation.d \
./ns3.25_ndnsim2.6/src/netanim/examples/grid-animation.d \
./ns3.25_ndnsim2.6/src/netanim/examples/resources-counters.d \
./ns3.25_ndnsim2.6/src/netanim/examples/star-animation.d \
./ns3.25_ndnsim2.6/src/netanim/examples/uan-animation.d \
./ns3.25_ndnsim2.6/src/netanim/examples/wireless-animation.d 

OBJS += \
./ns3.25_ndnsim2.6/src/netanim/examples/colors-link-description.o \
./ns3.25_ndnsim2.6/src/netanim/examples/dumbbell-animation.o \
./ns3.25_ndnsim2.6/src/netanim/examples/grid-animation.o \
./ns3.25_ndnsim2.6/src/netanim/examples/resources-counters.o \
./ns3.25_ndnsim2.6/src/netanim/examples/star-animation.o \
./ns3.25_ndnsim2.6/src/netanim/examples/uan-animation.o \
./ns3.25_ndnsim2.6/src/netanim/examples/wireless-animation.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/netanim/examples/%.o: ../ns3.25_ndnsim2.6/src/netanim/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


