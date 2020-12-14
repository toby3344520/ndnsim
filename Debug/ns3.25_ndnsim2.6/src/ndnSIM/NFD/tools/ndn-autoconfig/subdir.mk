################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/dns-srv.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-identity-name.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-search-domains.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/main.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/multicast-discovery.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/ndn-fch-discovery.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/procedure.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/stage.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/dns-srv.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-identity-name.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-search-domains.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/main.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/multicast-discovery.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/ndn-fch-discovery.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/procedure.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/stage.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/dns-srv.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-identity-name.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/guess-from-search-domains.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/main.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/multicast-discovery.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/ndn-fch-discovery.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/procedure.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/stage.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tools/ndn-autoconfig/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


