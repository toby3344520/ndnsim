################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-entry.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-fifo.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lfu.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lru.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-persistent.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-entry.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-fifo.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lfu.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lru.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-persistent.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-entry.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-fifo.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lfu.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-lru.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage-persistent.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/in-memory-storage.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/ims/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


