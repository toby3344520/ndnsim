################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/algorithm.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/config-file.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/counter.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/global-io.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/logger.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/manager-base.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/ndebug.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network-predicate.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/privilege-helper.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/random.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/rtt-estimator.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/scheduler.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/version.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/algorithm.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/config-file.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/counter.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/global-io.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/logger.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/manager-base.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/ndebug.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network-predicate.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/privilege-helper.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/random.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/rtt-estimator.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/scheduler.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/version.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/algorithm.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/config-file.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/counter.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/global-io.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/logger.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/manager-base.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/ndebug.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network-predicate.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/network.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/privilege-helper.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/random.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/rtt-estimator.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/scheduler.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/version.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/core/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


