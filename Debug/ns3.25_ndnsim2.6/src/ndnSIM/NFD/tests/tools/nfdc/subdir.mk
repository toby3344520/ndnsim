################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/channel-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-definition.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-parser.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/cs-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/face-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/fib-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/format-helpers.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/forwarder-general-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/help.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/rib-module.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/status-report.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/strategy-choice-module.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/channel-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-definition.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-parser.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/cs-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/face-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/fib-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/format-helpers.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/forwarder-general-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/help.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/rib-module.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/status-report.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/strategy-choice-module.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/channel-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-definition.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/command-parser.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/cs-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/face-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/fib-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/format-helpers.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/forwarder-general-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/help.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/rib-module.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/status-report.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/strategy-choice-module.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/nfdc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


