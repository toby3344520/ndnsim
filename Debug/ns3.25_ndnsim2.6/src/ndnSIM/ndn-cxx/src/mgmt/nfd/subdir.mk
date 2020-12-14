################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/channel-status.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/command-options.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-command.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-parameters.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/controller.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/cs-info.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-event-notification.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-monitor.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-query-filter.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-status.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/fib-entry.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/forwarder-status.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/rib-entry.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/status-dataset.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/strategy-choice.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/channel-status.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/command-options.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-command.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-parameters.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/controller.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/cs-info.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-event-notification.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-monitor.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-query-filter.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-status.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/fib-entry.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/forwarder-status.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/rib-entry.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/status-dataset.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/strategy-choice.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/channel-status.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/command-options.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-command.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/control-parameters.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/controller.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/cs-info.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-event-notification.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-monitor.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-query-filter.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/face-status.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/fib-entry.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/forwarder-status.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/rib-entry.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/status-dataset.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/strategy-choice.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/nfd/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


