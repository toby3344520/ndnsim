################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/command-authenticator.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/cs-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-command-fixture.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-create-face.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-update-face.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/fib-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/forwarder-status-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/general-config-section.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/nfd-manager-common-fixture.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/strategy-choice-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/tables-config-section.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/command-authenticator.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/cs-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-command-fixture.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-create-face.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-update-face.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/fib-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/forwarder-status-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/general-config-section.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/nfd-manager-common-fixture.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/strategy-choice-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/tables-config-section.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/command-authenticator.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/cs-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-command-fixture.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-create-face.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager-update-face.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/face-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/fib-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/forwarder-status-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/general-config-section.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/nfd-manager-common-fixture.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/strategy-choice-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/tables-config-section.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/daemon/mgmt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


