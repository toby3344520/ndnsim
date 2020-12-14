################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/traffic-control/model/codel-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/fq-codel-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/mq-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/packet-filter.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/pfifo-fast-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/pie-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/red-queue-disc.cc \
../ns3.25_ndnsim2.6/src/traffic-control/model/traffic-control-layer.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/traffic-control/model/codel-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/fq-codel-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/mq-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/packet-filter.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/pfifo-fast-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/pie-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/red-queue-disc.d \
./ns3.25_ndnsim2.6/src/traffic-control/model/traffic-control-layer.d 

OBJS += \
./ns3.25_ndnsim2.6/src/traffic-control/model/codel-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/fq-codel-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/mq-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/packet-filter.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/pfifo-fast-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/pie-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/red-queue-disc.o \
./ns3.25_ndnsim2.6/src/traffic-control/model/traffic-control-layer.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/traffic-control/model/%.o: ../ns3.25_ndnsim2.6/src/traffic-control/model/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


