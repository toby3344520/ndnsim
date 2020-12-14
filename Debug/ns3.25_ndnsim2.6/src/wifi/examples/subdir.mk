################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/wifi/examples/test-interference-helper.cc \
../ns3.25_ndnsim2.6/src/wifi/examples/wifi-manager-example.cc \
../ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-configuration.cc \
../ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-test.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/wifi/examples/test-interference-helper.d \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-manager-example.d \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-configuration.d \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-test.d 

OBJS += \
./ns3.25_ndnsim2.6/src/wifi/examples/test-interference-helper.o \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-manager-example.o \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-configuration.o \
./ns3.25_ndnsim2.6/src/wifi/examples/wifi-phy-test.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/wifi/examples/%.o: ../ns3.25_ndnsim2.6/src/wifi/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


