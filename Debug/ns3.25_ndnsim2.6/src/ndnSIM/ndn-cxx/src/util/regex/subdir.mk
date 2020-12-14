################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-manager.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-set-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pattern-list-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pseudo-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-repeat-matcher.cpp \
../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-top-matcher.cpp 

OBJS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-manager.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-set-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pattern-list-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pseudo-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-repeat-matcher.o \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-top-matcher.o 

CPP_DEPS += \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-manager.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-backref-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-component-set-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pattern-list-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-pseudo-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-repeat-matcher.d \
./ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/regex-top-matcher.d 


# Each subdirectory must supply rules for building sources it contributes
ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/%.o: ../ns3.25_ndnsim2.6/src/ndnSIM/ndn-cxx/src/util/regex/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


