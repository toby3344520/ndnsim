################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../pybindgen/examples/boost_shared_ptr/bsp.cc 

CC_DEPS += \
./pybindgen/examples/boost_shared_ptr/bsp.d 

OBJS += \
./pybindgen/examples/boost_shared_ptr/bsp.o 


# Each subdirectory must supply rules for building sources it contributes
pybindgen/examples/boost_shared_ptr/%.o: ../pybindgen/examples/boost_shared_ptr/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

