################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/examples/energy/energy-model-example.cc \
../ns3.25_ndnsim2.6/examples/energy/energy-model-with-harvesting-example.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/examples/energy/energy-model-example.d \
./ns3.25_ndnsim2.6/examples/energy/energy-model-with-harvesting-example.d 

OBJS += \
./ns3.25_ndnsim2.6/examples/energy/energy-model-example.o \
./ns3.25_ndnsim2.6/examples/energy/energy-model-with-harvesting-example.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/examples/energy/%.o: ../ns3.25_ndnsim2.6/examples/energy/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


