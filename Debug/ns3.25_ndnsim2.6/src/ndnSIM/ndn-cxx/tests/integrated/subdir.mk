################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/encoding-benchmark.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/face.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/network-monitor.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/scheduler-benchmark.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/encoding-benchmark.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/face.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/network-monitor.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/scheduler-benchmark.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/encoding-benchmark.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/face.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/network-monitor.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/scheduler-benchmark.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/integrated/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


