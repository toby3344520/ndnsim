################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../AMuSt-libdash/libdash/build/CMakeFiles/feature_tests.cxx 

C_SRCS += \
../AMuSt-libdash/libdash/build/CMakeFiles/feature_tests.c 

CXX_DEPS += \
./AMuSt-libdash/libdash/build/CMakeFiles/feature_tests.d 

OBJS += \
./AMuSt-libdash/libdash/build/CMakeFiles/feature_tests.o 

C_DEPS += \
./AMuSt-libdash/libdash/build/CMakeFiles/feature_tests.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/build/CMakeFiles/%.o: ../AMuSt-libdash/libdash/build/CMakeFiles/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

AMuSt-libdash/libdash/build/CMakeFiles/%.o: ../AMuSt-libdash/libdash/build/CMakeFiles/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


