################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../pybindgen/examples/h/h.cc 

CC_DEPS += \
./pybindgen/examples/h/h.d 

OBJS += \
./pybindgen/examples/h/h.o 


# Each subdirectory must supply rules for building sources it contributes
pybindgen/examples/h/%.o: ../pybindgen/examples/h/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


