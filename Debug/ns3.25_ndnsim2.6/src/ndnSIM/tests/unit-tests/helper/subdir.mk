################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-face-container.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-fib-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-global-routing-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-link-control-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-network-region-table-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-stack-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-strategy-choice-helper.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-face-container.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-fib-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-global-routing-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-link-control-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-network-region-table-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-stack-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-strategy-choice-helper.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-face-container.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-fib-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-global-routing-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-link-control-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-network-region-table-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-stack-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/ndn-strategy-choice-helper.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/tests/unit-tests/helper/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


