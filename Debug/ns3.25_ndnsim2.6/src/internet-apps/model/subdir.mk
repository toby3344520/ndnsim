################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-client.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-header.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-server.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/ping6.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/radvd-interface.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/radvd-prefix.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/radvd.cc \
../ns3.25_ndnsim2.6/src/internet-apps/model/v4ping.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-client.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-header.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-server.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/ping6.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd-interface.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd-prefix.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd.d \
./ns3.25_ndnsim2.6/src/internet-apps/model/v4ping.d 

OBJS += \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-client.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-header.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/dhcp-server.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/ping6.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd-interface.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd-prefix.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/radvd.o \
./ns3.25_ndnsim2.6/src/internet-apps/model/v4ping.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/internet-apps/model/%.o: ../ns3.25_ndnsim2.6/src/internet-apps/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


