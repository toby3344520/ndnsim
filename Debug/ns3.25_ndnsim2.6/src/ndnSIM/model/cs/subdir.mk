################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-impl.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-nocache.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-freshness.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-probability.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-stats.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/ndn-content-store.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-impl.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-nocache.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-freshness.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-probability.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-stats.o \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/ndn-content-store.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-impl.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-nocache.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-freshness.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-probability.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/content-store-with-stats.d \
./ns3.25_ndnsim2.6/src/ndnSIM/model/cs/ndn-content-store.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/model/cs/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/model/cs/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


