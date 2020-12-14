################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/multicast-discovery.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/procedure.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/multicast-discovery.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/procedure.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/multicast-discovery.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/procedure.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/tools/ndn-autoconfig/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


