################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/city-hash.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/config-file.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/global-io.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/manager-base.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network-predicate.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/privilege-helper.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/random.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/rtt-estimator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/scheduler.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/city-hash.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/config-file.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/global-io.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/manager-base.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network-predicate.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/privilege-helper.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/random.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/rtt-estimator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/scheduler.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/city-hash.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/config-file.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/global-io.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/manager-base.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network-predicate.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/network.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/privilege-helper.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/random.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/rtt-estimator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/scheduler.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/core/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


