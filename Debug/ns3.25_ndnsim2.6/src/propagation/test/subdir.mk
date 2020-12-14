################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-los-test-suite.cc \
../ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-nlos-over-rooftop-test-suite.cc \
../ns3.25_ndnsim2.6/src/propagation/test/kun-2600-mhz-test-suite.cc \
../ns3.25_ndnsim2.6/src/propagation/test/okumura-hata-test-suite.cc \
../ns3.25_ndnsim2.6/src/propagation/test/propagation-loss-model-test-suite.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-los-test-suite.d \
./ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-nlos-over-rooftop-test-suite.d \
./ns3.25_ndnsim2.6/src/propagation/test/kun-2600-mhz-test-suite.d \
./ns3.25_ndnsim2.6/src/propagation/test/okumura-hata-test-suite.d \
./ns3.25_ndnsim2.6/src/propagation/test/propagation-loss-model-test-suite.d 

OBJS += \
./ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-los-test-suite.o \
./ns3.25_ndnsim2.6/src/propagation/test/itu-r-1411-nlos-over-rooftop-test-suite.o \
./ns3.25_ndnsim2.6/src/propagation/test/kun-2600-mhz-test-suite.o \
./ns3.25_ndnsim2.6/src/propagation/test/okumura-hata-test-suite.o \
./ns3.25_ndnsim2.6/src/propagation/test/propagation-loss-model-test-suite.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/propagation/test/%.o: ../ns3.25_ndnsim2.6/src/propagation/test/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


