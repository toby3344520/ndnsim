################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/data.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation-list.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/exclude.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/face.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest-filter.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/key-locator.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/link.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/meta-info.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name-component.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/packet-base.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/selectors.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature-info.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/data.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation-list.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/exclude.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/face.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest-filter.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/key-locator.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/link.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/meta-info.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name-component.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/packet-base.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/selectors.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature-info.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/data.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation-list.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/delegation.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/exclude.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/face.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest-filter.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/interest.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/key-locator.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/link.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/meta-info.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name-component.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/name.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/packet-base.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/selectors.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature-info.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/signature.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


