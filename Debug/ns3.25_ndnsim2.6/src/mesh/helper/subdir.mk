################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/mesh/helper/mesh-helper.cc \
../ns3.25_ndnsim2.6/src/mesh/helper/mesh-stack-installer.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/mesh/helper/mesh-helper.d \
./ns3.25_ndnsim2.6/src/mesh/helper/mesh-stack-installer.d 

OBJS += \
./ns3.25_ndnsim2.6/src/mesh/helper/mesh-helper.o \
./ns3.25_ndnsim2.6/src/mesh/helper/mesh-stack-installer.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/mesh/helper/%.o: ../ns3.25_ndnsim2.6/src/mesh/helper/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

