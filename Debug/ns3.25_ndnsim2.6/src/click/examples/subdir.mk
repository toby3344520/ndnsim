################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-defines.cc \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-raw-wlan.cc \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-routing.cc \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-simple-lan.cc \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-csma.cc \
../ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-wifi.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-defines.d \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-raw-wlan.d \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-routing.d \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-simple-lan.d \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-csma.d \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-wifi.d 

OBJS += \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-defines.o \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-raw-wlan.o \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-routing.o \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-simple-lan.o \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-csma.o \
./ns3.25_ndnsim2.6/src/click/examples/nsclick-udp-client-server-wifi.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/click/examples/%.o: ../ns3.25_ndnsim2.6/src/click/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


