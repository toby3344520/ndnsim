################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../pybindgen/examples/std_shared_ptr/sp.cc 

CC_DEPS += \
./pybindgen/examples/std_shared_ptr/sp.d 

OBJS += \
./pybindgen/examples/std_shared_ptr/sp.o 


# Each subdirectory must supply rules for building sources it contributes
pybindgen/examples/std_shared_ptr/%.o: ../pybindgen/examples/std_shared_ptr/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


