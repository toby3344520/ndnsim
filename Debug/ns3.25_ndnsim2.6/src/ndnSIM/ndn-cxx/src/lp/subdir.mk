################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/cache-policy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack-header.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/packet.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/prefix-announcement.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/cache-policy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack-header.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/packet.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/prefix-announcement.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/cache-policy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack-header.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/nack.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/packet.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/prefix-announcement.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/lp/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


