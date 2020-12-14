################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/command-interest-signer.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/digest-sha256.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/key-params.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/safe-bag.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-ecdsa.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-rsa.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-helpers.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-info.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/transform.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-config.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-null.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validity-period.t.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/verification-helpers.t.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/command-interest-signer.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/digest-sha256.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/key-params.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/safe-bag.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-ecdsa.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-rsa.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-helpers.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-info.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/transform.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-config.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-null.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validity-period.t.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/verification-helpers.t.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/command-interest-signer.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/digest-sha256.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/key-params.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/safe-bag.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-ecdsa.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signature-sha256-with-rsa.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-helpers.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/signing-info.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/transform.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-config.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validator-null.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/validity-period.t.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/verification-helpers.t.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/tests/unit-tests/security/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


