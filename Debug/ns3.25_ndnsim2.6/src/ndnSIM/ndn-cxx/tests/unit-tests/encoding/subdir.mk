################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block-helpers.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/buffer-stream.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoder.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoding-buffer.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/estimator.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/nfd-constants.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/tlv.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block-helpers.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/buffer-stream.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoder.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoding-buffer.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/estimator.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/nfd-constants.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/tlv.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block-helpers.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/block.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/buffer-stream.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoder.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/encoding-buffer.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/estimator.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/nfd-constants.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/tlv.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/encoding/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


