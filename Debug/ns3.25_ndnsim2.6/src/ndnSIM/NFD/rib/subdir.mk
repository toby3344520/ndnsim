################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/auto-prefix-propagator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-update.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-updater.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/propagated-entry.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-entry.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update-batch.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/route.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/service.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/auto-prefix-propagator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-update.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-updater.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/propagated-entry.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-entry.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update-batch.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/route.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/service.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/auto-prefix-propagator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-update.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/fib-updater.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/propagated-entry.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-entry.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update-batch.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib-update.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/rib.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/route.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/service.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/rib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


