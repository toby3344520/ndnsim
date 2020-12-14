################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-app.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-batches.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-cbr.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-pcon.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-window.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-zipf-mandelbrot.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-fileserver.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-multimedia-server.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-cbr.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw-tian.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fileserver.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-livemedia-consumer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-multimedia-consumer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-producer.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-app.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-batches.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-cbr.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-pcon.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-window.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-zipf-mandelbrot.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-fileserver.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-multimedia-server.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-cbr.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw-tian.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fileserver.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-livemedia-consumer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-multimedia-consumer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-producer.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-app.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-batches.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-cbr.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-pcon.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-window.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer-zipf-mandelbrot.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-consumer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-fileserver.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fake-multimedia-server.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-cbr.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw-tian.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer-wdw.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-file-consumer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-fileserver.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-livemedia-consumer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-multimedia-consumer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/apps/ndn-producer.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/apps/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/apps/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


