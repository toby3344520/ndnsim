################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block-helpers.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer-stream.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/encoder.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/estimator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/nfd-constants.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/tlv.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block-helpers.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer-stream.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/encoder.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/estimator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/nfd-constants.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/tlv.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block-helpers.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/block.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer-stream.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/buffer.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/encoder.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/estimator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/nfd-constants.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/tlv.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/encoding/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


