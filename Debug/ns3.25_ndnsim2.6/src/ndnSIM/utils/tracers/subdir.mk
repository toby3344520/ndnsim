################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-rate-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-app-delay-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-cs-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-dashplayer-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-log-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-info-test.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-rate-tracer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-tracer.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-rate-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-app-delay-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-cs-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-dashplayer-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-log-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-info-test.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-rate-tracer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-tracer.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-rate-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/l2-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-app-delay-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-cs-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-dashplayer-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-log-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-fileconsumer-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-info-test.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-rate-tracer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/ndn-l3-tracer.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/utils/tracers/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


