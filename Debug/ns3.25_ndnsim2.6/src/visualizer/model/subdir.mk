################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/visualizer/model/dummy-file-for-static-builds.cc \
../ns3.25_ndnsim2.6/src/visualizer/model/pyviz.cc \
../ns3.25_ndnsim2.6/src/visualizer/model/visual-simulator-impl.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/visualizer/model/dummy-file-for-static-builds.d \
./ns3.25_ndnsim2.6/src/visualizer/model/pyviz.d \
./ns3.25_ndnsim2.6/src/visualizer/model/visual-simulator-impl.d 

OBJS += \
./ns3.25_ndnsim2.6/src/visualizer/model/dummy-file-for-static-builds.o \
./ns3.25_ndnsim2.6/src/visualizer/model/pyviz.o \
./ns3.25_ndnsim2.6/src/visualizer/model/visual-simulator-impl.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/visualizer/model/%.o: ../ns3.25_ndnsim2.6/src/visualizer/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


