################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../pybindgen/examples/e/e.cc 

CC_DEPS += \
./pybindgen/examples/e/e.d 

OBJS += \
./pybindgen/examples/e/e.o 


# Each subdirectory must supply rules for building sources it contributes
pybindgen/examples/e/%.o: ../pybindgen/examples/e/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


