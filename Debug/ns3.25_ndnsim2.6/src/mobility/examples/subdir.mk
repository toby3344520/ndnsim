################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/mobility/examples/bonnmotion-ns2-example.cc \
../ns3.25_ndnsim2.6/src/mobility/examples/main-grid-topology.cc \
../ns3.25_ndnsim2.6/src/mobility/examples/main-random-topology.cc \
../ns3.25_ndnsim2.6/src/mobility/examples/main-random-walk.cc \
../ns3.25_ndnsim2.6/src/mobility/examples/mobility-trace-example.cc \
../ns3.25_ndnsim2.6/src/mobility/examples/ns2-mobility-trace.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/mobility/examples/bonnmotion-ns2-example.d \
./ns3.25_ndnsim2.6/src/mobility/examples/main-grid-topology.d \
./ns3.25_ndnsim2.6/src/mobility/examples/main-random-topology.d \
./ns3.25_ndnsim2.6/src/mobility/examples/main-random-walk.d \
./ns3.25_ndnsim2.6/src/mobility/examples/mobility-trace-example.d \
./ns3.25_ndnsim2.6/src/mobility/examples/ns2-mobility-trace.d 

OBJS += \
./ns3.25_ndnsim2.6/src/mobility/examples/bonnmotion-ns2-example.o \
./ns3.25_ndnsim2.6/src/mobility/examples/main-grid-topology.o \
./ns3.25_ndnsim2.6/src/mobility/examples/main-random-topology.o \
./ns3.25_ndnsim2.6/src/mobility/examples/main-random-walk.o \
./ns3.25_ndnsim2.6/src/mobility/examples/mobility-trace-example.o \
./ns3.25_ndnsim2.6/src/mobility/examples/ns2-mobility-trace.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/mobility/examples/%.o: ../ns3.25_ndnsim2.6/src/mobility/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


