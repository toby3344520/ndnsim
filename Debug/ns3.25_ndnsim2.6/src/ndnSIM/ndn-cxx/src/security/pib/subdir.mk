################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/certificate-container.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity-container.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key-container.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-memory.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-sqlite3.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/certificate-container.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity-container.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key-container.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-memory.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-sqlite3.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/certificate-container.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity-container.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/identity.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key-container.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/key.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-memory.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib-sqlite3.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/pib.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/security/pib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


