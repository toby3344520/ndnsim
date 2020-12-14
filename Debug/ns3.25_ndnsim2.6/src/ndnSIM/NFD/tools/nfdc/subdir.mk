################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/available-commands.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/channel-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-definition.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-parser.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/cs-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/execute-command.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/face-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/fib-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/find-face.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/format-helpers.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/forwarder-general-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/help.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/main.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/rib-module.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status-report.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/strategy-choice-module.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/available-commands.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/channel-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-definition.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-parser.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/cs-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/execute-command.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/face-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/fib-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/find-face.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/format-helpers.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/forwarder-general-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/help.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/main.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/rib-module.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status-report.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/strategy-choice-module.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/available-commands.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/channel-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-definition.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/command-parser.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/cs-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/execute-command.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/face-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/fib-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/find-face.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/format-helpers.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/forwarder-general-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/help.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/main.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/rib-module.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status-report.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/status.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/strategy-choice-module.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/nfdc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


