################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/cache-policy.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack-header.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/packet.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/prefix-announcement.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/cache-policy.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack-header.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/packet.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/prefix-announcement.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/cache-policy.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack-header.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/nack.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/packet.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/prefix-announcement.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/lp/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


