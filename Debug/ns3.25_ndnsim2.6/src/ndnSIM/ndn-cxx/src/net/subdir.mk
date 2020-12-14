################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/address-converter.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/ethernet.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/face-uri.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-address.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-interface.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor-stub.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/address-converter.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/ethernet.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/face-uri.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-address.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-interface.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor-stub.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/address-converter.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/ethernet.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/face-uri.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-address.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-interface.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor-stub.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/network-monitor.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


