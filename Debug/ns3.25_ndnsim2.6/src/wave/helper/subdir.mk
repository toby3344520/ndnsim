################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-helper.cc \
../ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-stats.cc \
../ns3.25_ndnsim2.6/src/wave/helper/wave-helper.cc \
../ns3.25_ndnsim2.6/src/wave/helper/wave-mac-helper.cc \
../ns3.25_ndnsim2.6/src/wave/helper/wifi-80211p-helper.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-helper.d \
./ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-stats.d \
./ns3.25_ndnsim2.6/src/wave/helper/wave-helper.d \
./ns3.25_ndnsim2.6/src/wave/helper/wave-mac-helper.d \
./ns3.25_ndnsim2.6/src/wave/helper/wifi-80211p-helper.d 

OBJS += \
./ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-helper.o \
./ns3.25_ndnsim2.6/src/wave/helper/wave-bsm-stats.o \
./ns3.25_ndnsim2.6/src/wave/helper/wave-helper.o \
./ns3.25_ndnsim2.6/src/wave/helper/wave-mac-helper.o \
./ns3.25_ndnsim2.6/src/wave/helper/wifi-80211p-helper.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/wave/helper/%.o: ../ns3.25_ndnsim2.6/src/wave/helper/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


