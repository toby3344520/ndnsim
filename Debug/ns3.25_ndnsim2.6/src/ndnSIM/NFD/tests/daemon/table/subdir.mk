################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cleanup.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-lru.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-priority-fifo.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/dead-nonce-list.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/fib.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements-accessor.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/name-tree.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/network-region-table.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit-entry.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-choice.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-info-host.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cleanup.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-lru.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-priority-fifo.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/dead-nonce-list.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/fib.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements-accessor.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/name-tree.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/network-region-table.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit-entry.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-choice.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-info-host.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cleanup.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-lru.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs-policy-priority-fifo.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/cs.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/dead-nonce-list.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/fib.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements-accessor.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/measurements.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/name-tree.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/network-region-table.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit-entry.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/pit.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-choice.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/strategy-info-host.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/table/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


