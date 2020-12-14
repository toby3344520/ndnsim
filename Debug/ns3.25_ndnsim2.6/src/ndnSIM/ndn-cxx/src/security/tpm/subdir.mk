################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-file.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-mem.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-osx.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-mem.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-osx.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/tpm.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-file.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-mem.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-osx.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-mem.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-osx.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/tpm.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-file.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-mem.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end-osx.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/back-end.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-mem.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle-osx.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/key-handle.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/tpm.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/tpm/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


