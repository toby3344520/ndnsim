################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/custom-app.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/hijacker.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/custom-app.o \
./ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/hijacker.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/custom-app.d \
./ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/hijacker.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/examples/ndn-custom-apps/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


