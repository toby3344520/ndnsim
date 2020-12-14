################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/config-file.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/dummy-client-face.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/indented-stream.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/io.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/notification-subscriber.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/random.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler-scoped-event-id.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/segment-fetcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sha256.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sqlite3-statement.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/string-helper.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time-unit-test-clock.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/config-file.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/dummy-client-face.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/indented-stream.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/io.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/notification-subscriber.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/random.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler-scoped-event-id.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/segment-fetcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sha256.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sqlite3-statement.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/string-helper.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time-unit-test-clock.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/config-file.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/dummy-client-face.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/indented-stream.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/io.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/notification-subscriber.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/random.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler-scoped-event-id.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/scheduler.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/segment-fetcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sha256.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/sqlite3-statement.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/string-helper.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time-unit-test-clock.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/time.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


