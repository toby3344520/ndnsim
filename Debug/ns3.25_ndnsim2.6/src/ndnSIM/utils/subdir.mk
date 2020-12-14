################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/batches.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/dummy-keychain.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-fw-hop-count-tag.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-estimator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-mean-deviation.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-time.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/batches.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/dummy-keychain.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-fw-hop-count-tag.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-estimator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-mean-deviation.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-time.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/batches.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/dummy-keychain.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-fw-hop-count-tag.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-estimator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-rtt-mean-deviation.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/ndn-time.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/utils/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/utils/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


