################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/antenna/model/angles.cc \
../ns3.25_ndnsim2.6/src/antenna/model/antenna-model.cc \
../ns3.25_ndnsim2.6/src/antenna/model/cosine-antenna-model.cc \
../ns3.25_ndnsim2.6/src/antenna/model/isotropic-antenna-model.cc \
../ns3.25_ndnsim2.6/src/antenna/model/parabolic-antenna-model.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/antenna/model/angles.d \
./ns3.25_ndnsim2.6/src/antenna/model/antenna-model.d \
./ns3.25_ndnsim2.6/src/antenna/model/cosine-antenna-model.d \
./ns3.25_ndnsim2.6/src/antenna/model/isotropic-antenna-model.d \
./ns3.25_ndnsim2.6/src/antenna/model/parabolic-antenna-model.d 

OBJS += \
./ns3.25_ndnsim2.6/src/antenna/model/angles.o \
./ns3.25_ndnsim2.6/src/antenna/model/antenna-model.o \
./ns3.25_ndnsim2.6/src/antenna/model/cosine-antenna-model.o \
./ns3.25_ndnsim2.6/src/antenna/model/isotropic-antenna-model.o \
./ns3.25_ndnsim2.6/src/antenna/model/parabolic-antenna-model.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/antenna/model/%.o: ../ns3.25_ndnsim2.6/src/antenna/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


