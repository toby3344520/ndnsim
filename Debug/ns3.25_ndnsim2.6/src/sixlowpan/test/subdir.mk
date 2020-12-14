################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-fragmentation-test.cc \
../ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-hc1-test.cc \
../ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-iphc-test.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-fragmentation-test.d \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-hc1-test.d \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-iphc-test.d 

OBJS += \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-fragmentation-test.o \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-hc1-test.o \
./ns3.25_ndnsim2.6/src/sixlowpan/test/sixlowpan-iphc-test.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/sixlowpan/test/%.o: ../ns3.25_ndnsim2.6/src/sixlowpan/test/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


