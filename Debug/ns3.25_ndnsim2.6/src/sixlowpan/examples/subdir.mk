################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/sixlowpan/examples/example-ping-lr-wpan.cc \
../ns3.25_ndnsim2.6/src/sixlowpan/examples/example-sixlowpan.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/sixlowpan/examples/example-ping-lr-wpan.d \
./ns3.25_ndnsim2.6/src/sixlowpan/examples/example-sixlowpan.d 

OBJS += \
./ns3.25_ndnsim2.6/src/sixlowpan/examples/example-ping-lr-wpan.o \
./ns3.25_ndnsim2.6/src/sixlowpan/examples/example-sixlowpan.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/sixlowpan/examples/%.o: ../ns3.25_ndnsim2.6/src/sixlowpan/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


