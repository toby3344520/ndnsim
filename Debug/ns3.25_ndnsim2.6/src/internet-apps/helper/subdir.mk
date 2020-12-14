################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/internet-apps/helper/dhcp-helper.cc \
../ns3.25_ndnsim2.6/src/internet-apps/helper/ping6-helper.cc \
../ns3.25_ndnsim2.6/src/internet-apps/helper/radvd-helper.cc \
../ns3.25_ndnsim2.6/src/internet-apps/helper/v4ping-helper.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/internet-apps/helper/dhcp-helper.d \
./ns3.25_ndnsim2.6/src/internet-apps/helper/ping6-helper.d \
./ns3.25_ndnsim2.6/src/internet-apps/helper/radvd-helper.d \
./ns3.25_ndnsim2.6/src/internet-apps/helper/v4ping-helper.d 

OBJS += \
./ns3.25_ndnsim2.6/src/internet-apps/helper/dhcp-helper.o \
./ns3.25_ndnsim2.6/src/internet-apps/helper/ping6-helper.o \
./ns3.25_ndnsim2.6/src/internet-apps/helper/radvd-helper.o \
./ns3.25_ndnsim2.6/src/internet-apps/helper/v4ping-helper.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/internet-apps/helper/%.o: ../ns3.25_ndnsim2.6/src/internet-apps/helper/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


