################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/client-to-nlsr-readvertise-policy.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/nfd-rib-readvertise-destination.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise-destination.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertised-route.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/client-to-nlsr-readvertise-policy.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/nfd-rib-readvertise-destination.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise-destination.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertised-route.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/client-to-nlsr-readvertise-policy.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/nfd-rib-readvertise-destination.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise-destination.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertise.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/readvertised-route.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/readvertise/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


