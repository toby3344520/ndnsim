################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/auto-prefix-propagator.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-erase-face.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-face.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-namespace.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-update-face.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/propagated-entry.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-entry.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-manager.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-update.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/route.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/auto-prefix-propagator.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-erase-face.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-face.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-namespace.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-update-face.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/propagated-entry.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-entry.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-manager.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-update.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/route.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/auto-prefix-propagator.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-erase-face.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-face.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-new-namespace.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/fib-updates-update-face.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/propagated-entry.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-entry.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-manager.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib-update.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/rib.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/route.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/NFD/tests/rib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


