################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../pybindgen/examples/g/g.cc 

CC_DEPS += \
./pybindgen/examples/g/g.d 

OBJS += \
./pybindgen/examples/g/g.o 


# Each subdirectory must supply rules for building sources it contributes
pybindgen/examples/g/%.o: ../pybindgen/examples/g/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


