################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/link-type-helper.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/linux-if-constants.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-osx.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-rtnl.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/link-type-helper.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/linux-if-constants.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-osx.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-rtnl.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/link-type-helper.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/linux-if-constants.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-osx.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/network-monitor-impl-rtnl.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/net/detail/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


