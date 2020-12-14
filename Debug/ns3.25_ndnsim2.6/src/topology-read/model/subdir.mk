################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/topology-read/model/inet-topology-reader.cc \
../ns3.25_ndnsim2.6/src/topology-read/model/orbis-topology-reader.cc \
../ns3.25_ndnsim2.6/src/topology-read/model/rocketfuel-topology-reader.cc \
../ns3.25_ndnsim2.6/src/topology-read/model/topology-reader.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/topology-read/model/inet-topology-reader.d \
./ns3.25_ndnsim2.6/src/topology-read/model/orbis-topology-reader.d \
./ns3.25_ndnsim2.6/src/topology-read/model/rocketfuel-topology-reader.d \
./ns3.25_ndnsim2.6/src/topology-read/model/topology-reader.d 

OBJS += \
./ns3.25_ndnsim2.6/src/topology-read/model/inet-topology-reader.o \
./ns3.25_ndnsim2.6/src/topology-read/model/orbis-topology-reader.o \
./ns3.25_ndnsim2.6/src/topology-read/model/rocketfuel-topology-reader.o \
./ns3.25_ndnsim2.6/src/topology-read/model/topology-reader.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/topology-read/model/%.o: ../ns3.25_ndnsim2.6/src/topology-read/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


