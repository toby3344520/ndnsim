################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/command-authenticator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/cs-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/face-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/fib-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/forwarder-status-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/general-config-section.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/nfd-manager-base.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/strategy-choice-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/tables-config-section.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/command-authenticator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/cs-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/face-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/fib-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/forwarder-status-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/general-config-section.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/nfd-manager-base.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/strategy-choice-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/tables-config-section.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/command-authenticator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/cs-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/face-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/fib-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/forwarder-status-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/general-config-section.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/nfd-manager-base.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/strategy-choice-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/tables-config-section.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/daemon/mgmt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


