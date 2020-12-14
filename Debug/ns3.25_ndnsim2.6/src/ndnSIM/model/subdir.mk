################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-app-link-service.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-block-header.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-common.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-global-router.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-header.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-l3-protocol.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-net-device-transport.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-ns3.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-app-link-service.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-block-header.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-common.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-global-router.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-header.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-l3-protocol.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-net-device-transport.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-ns3.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-app-link-service.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-block-header.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-common.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-global-router.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-header.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-l3-protocol.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-net-device-transport.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/ndn-ns3.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/model/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/model/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


