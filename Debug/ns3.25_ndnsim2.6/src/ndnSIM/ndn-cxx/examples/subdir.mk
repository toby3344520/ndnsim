################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer-with-timer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/producer.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer-with-timer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/producer.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer-with-timer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/consumer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/producer.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/examples/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


