################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/examples/tutorial/fifth.cc \
../ns3.25_ndnsim2.6/examples/tutorial/first.cc \
../ns3.25_ndnsim2.6/examples/tutorial/fourth.cc \
../ns3.25_ndnsim2.6/examples/tutorial/hello-simulator.cc \
../ns3.25_ndnsim2.6/examples/tutorial/second.cc \
../ns3.25_ndnsim2.6/examples/tutorial/seventh.cc \
../ns3.25_ndnsim2.6/examples/tutorial/sixth.cc \
../ns3.25_ndnsim2.6/examples/tutorial/third.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/examples/tutorial/fifth.d \
./ns3.25_ndnsim2.6/examples/tutorial/first.d \
./ns3.25_ndnsim2.6/examples/tutorial/fourth.d \
./ns3.25_ndnsim2.6/examples/tutorial/hello-simulator.d \
./ns3.25_ndnsim2.6/examples/tutorial/second.d \
./ns3.25_ndnsim2.6/examples/tutorial/seventh.d \
./ns3.25_ndnsim2.6/examples/tutorial/sixth.d \
./ns3.25_ndnsim2.6/examples/tutorial/third.d 

OBJS += \
./ns3.25_ndnsim2.6/examples/tutorial/fifth.o \
./ns3.25_ndnsim2.6/examples/tutorial/first.o \
./ns3.25_ndnsim2.6/examples/tutorial/fourth.o \
./ns3.25_ndnsim2.6/examples/tutorial/hello-simulator.o \
./ns3.25_ndnsim2.6/examples/tutorial/second.o \
./ns3.25_ndnsim2.6/examples/tutorial/seventh.o \
./ns3.25_ndnsim2.6/examples/tutorial/sixth.o \
./ns3.25_ndnsim2.6/examples/tutorial/third.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/examples/tutorial/%.o: ../ns3.25_ndnsim2.6/examples/tutorial/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


