################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/access-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/algorithm.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-measurements.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-probing-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy2.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/client-control-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/face-table.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/forwarder.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/multicast-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/ncc-strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/process-nack-traits.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-exponential.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-fixed.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/strategy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/unsolicited-data-policy.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/access-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/algorithm.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-measurements.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-probing-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy2.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/client-control-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/face-table.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/forwarder.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/multicast-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/ncc-strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/process-nack-traits.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-exponential.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-fixed.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/strategy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/unsolicited-data-policy.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/access-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/algorithm.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-measurements.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-probing-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/asf-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/best-route-strategy2.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/client-control-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/face-table.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/forwarder.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/multicast-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/ncc-strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/process-nack-traits.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-exponential.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/retx-suppression-fixed.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/strategy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/unsolicited-data-policy.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/fw/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


