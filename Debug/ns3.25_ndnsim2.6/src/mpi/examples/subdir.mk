################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ns3.25_ndnsim2.6/src/mpi/examples/nms-p2p-nix-distributed.cc \
../ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed-empty-node.cc \
../ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed.cc \
../ns3.25_ndnsim2.6/src/mpi/examples/third-distributed.cc 

CC_DEPS += \
./ns3.25_ndnsim2.6/src/mpi/examples/nms-p2p-nix-distributed.d \
./ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed-empty-node.d \
./ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed.d \
./ns3.25_ndnsim2.6/src/mpi/examples/third-distributed.d 

OBJS += \
./ns3.25_ndnsim2.6/src/mpi/examples/nms-p2p-nix-distributed.o \
./ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed-empty-node.o \
./ns3.25_ndnsim2.6/src/mpi/examples/simple-distributed.o \
./ns3.25_ndnsim2.6/src/mpi/examples/third-distributed.o 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/mpi/examples/%.o: ../ns3.25_ndnsim2.6/src/mpi/examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


