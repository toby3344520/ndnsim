################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/control-response.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/dispatcher.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/status-dataset-context.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/control-response.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/dispatcher.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/status-dataset-context.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/control-response.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/dispatcher.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/status-dataset-context.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/mgmt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


