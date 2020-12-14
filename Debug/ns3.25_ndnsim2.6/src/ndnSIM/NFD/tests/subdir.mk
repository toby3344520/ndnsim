################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/global-configuration.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/identity-management-fixture.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/limited-io.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/main.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/manager-common-fixture.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/test-common.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/global-configuration.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/identity-management-fixture.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/limited-io.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/main.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/manager-common-fixture.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/test-common.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/global-configuration.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/identity-management-fixture.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/limited-io.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/main.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/manager-common-fixture.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/test-common.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


