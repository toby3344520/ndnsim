################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/annotated-topology-reader.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-map-reader.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-weights-reader.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/annotated-topology-reader.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-map-reader.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-weights-reader.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/annotated-topology-reader.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-map-reader.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/rocketfuel-weights-reader.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/utils/topology/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


