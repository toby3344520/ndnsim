################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash_memoryleak_test/libdash_memoryleak_test.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash_memoryleak_test/libdash_memoryleak_test.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash_memoryleak_test/libdash_memoryleak_test.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash_memoryleak_test/%.o: ../AMuSt-libdash/libdash/libdash_memoryleak_test/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


