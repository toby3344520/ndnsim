################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/fw/congestion-mark-strategy.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/fw/congestion-mark-strategy.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/fw/congestion-mark-strategy.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/fw/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/fw/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

