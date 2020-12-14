################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/stats/examples/double-probe-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/file-aggregator-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/file-helper-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/gnuplot-aggregator-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/gnuplot-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/gnuplot-helper-example.cc \
../ns3.25_ndnsim2.6/src/stats/examples/time-probe-example.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/stats/examples/double-probe-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/file-aggregator-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/file-helper-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-aggregator-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-helper-example.d \
./ns3.25_ndnsim2.6/src/stats/examples/time-probe-example.d 

OBJS += \
./ns3.25_ndnsim2.6/src/stats/examples/double-probe-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/file-aggregator-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/file-helper-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-aggregator-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/gnuplot-helper-example.o \
./ns3.25_ndnsim2.6/src/stats/examples/time-probe-example.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/stats/examples/%.o: ../ns3.25_ndnsim2.6/src/stats/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


