################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/applications/helper/bulk-send-helper.cc \
../ns3.25_ndnsim2.6/src/applications/helper/on-off-helper.cc \
../ns3.25_ndnsim2.6/src/applications/helper/packet-sink-helper.cc \
../ns3.25_ndnsim2.6/src/applications/helper/udp-client-server-helper.cc \
../ns3.25_ndnsim2.6/src/applications/helper/udp-echo-helper.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/applications/helper/bulk-send-helper.d \
./ns3.25_ndnsim2.6/src/applications/helper/on-off-helper.d \
./ns3.25_ndnsim2.6/src/applications/helper/packet-sink-helper.d \
./ns3.25_ndnsim2.6/src/applications/helper/udp-client-server-helper.d \
./ns3.25_ndnsim2.6/src/applications/helper/udp-echo-helper.d 

OBJS += \
./ns3.25_ndnsim2.6/src/applications/helper/bulk-send-helper.o \
./ns3.25_ndnsim2.6/src/applications/helper/on-off-helper.o \
./ns3.25_ndnsim2.6/src/applications/helper/packet-sink-helper.o \
./ns3.25_ndnsim2.6/src/applications/helper/udp-client-server-helper.o \
./ns3.25_ndnsim2.6/src/applications/helper/udp-echo-helper.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/applications/helper/%.o: ../ns3.25_ndnsim2.6/src/applications/helper/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


