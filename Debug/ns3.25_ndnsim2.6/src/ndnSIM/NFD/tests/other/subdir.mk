################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/cs-benchmark.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/face-benchmark.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/pit-fib-benchmark.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/cs-benchmark.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/face-benchmark.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/pit-fib-benchmark.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/cs-benchmark.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/face-benchmark.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/pit-fib-benchmark.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/other/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


