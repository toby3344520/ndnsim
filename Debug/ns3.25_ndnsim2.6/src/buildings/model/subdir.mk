################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/buildings/model/building-list.cc \
../ns3.25_ndnsim2.6/src/buildings/model/building.cc \
../ns3.25_ndnsim2.6/src/buildings/model/buildings-propagation-loss-model.cc \
../ns3.25_ndnsim2.6/src/buildings/model/hybrid-buildings-propagation-loss-model.cc \
../ns3.25_ndnsim2.6/src/buildings/model/itu-r-1238-propagation-loss-model.cc \
../ns3.25_ndnsim2.6/src/buildings/model/mobility-building-info.cc \
../ns3.25_ndnsim2.6/src/buildings/model/oh-buildings-propagation-loss-model.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/buildings/model/building-list.d \
./ns3.25_ndnsim2.6/src/buildings/model/building.d \
./ns3.25_ndnsim2.6/src/buildings/model/buildings-propagation-loss-model.d \
./ns3.25_ndnsim2.6/src/buildings/model/hybrid-buildings-propagation-loss-model.d \
./ns3.25_ndnsim2.6/src/buildings/model/itu-r-1238-propagation-loss-model.d \
./ns3.25_ndnsim2.6/src/buildings/model/mobility-building-info.d \
./ns3.25_ndnsim2.6/src/buildings/model/oh-buildings-propagation-loss-model.d 

OBJS += \
./ns3.25_ndnsim2.6/src/buildings/model/building-list.o \
./ns3.25_ndnsim2.6/src/buildings/model/building.o \
./ns3.25_ndnsim2.6/src/buildings/model/buildings-propagation-loss-model.o \
./ns3.25_ndnsim2.6/src/buildings/model/hybrid-buildings-propagation-loss-model.o \
./ns3.25_ndnsim2.6/src/buildings/model/itu-r-1238-propagation-loss-model.o \
./ns3.25_ndnsim2.6/src/buildings/model/mobility-building-info.o \
./ns3.25_ndnsim2.6/src/buildings/model/oh-buildings-propagation-loss-model.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/buildings/model/%.o: ../ns3.25_ndnsim2.6/src/buildings/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


