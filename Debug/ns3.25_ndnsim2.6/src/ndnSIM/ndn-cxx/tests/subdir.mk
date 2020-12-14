################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/identity-management-fixture.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/main.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/make-interest-data.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/identity-management-fixture.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/main.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/make-interest-data.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/identity-management-fixture.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/main.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/make-interest-data.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


