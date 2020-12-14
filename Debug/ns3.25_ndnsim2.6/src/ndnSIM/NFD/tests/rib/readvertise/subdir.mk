################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/client-to-nlsr-readvertise-policy.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/nfd-rib-readvertise-destination.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/readvertise.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/client-to-nlsr-readvertise-policy.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/nfd-rib-readvertise-destination.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/readvertise.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/client-to-nlsr-readvertise-policy.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/nfd-rib-readvertise-destination.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/readvertise.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/readvertise/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


