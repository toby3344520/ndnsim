################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/control-response.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/dispatcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/status-dataset-context.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/control-response.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/dispatcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/status-dataset-context.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/control-response.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/dispatcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/status-dataset-context.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/mgmt/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


