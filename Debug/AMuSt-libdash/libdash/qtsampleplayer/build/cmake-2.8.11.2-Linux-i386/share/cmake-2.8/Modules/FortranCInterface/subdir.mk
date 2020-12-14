################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/my_module_.c \
../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/mymodule_.c 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/my_module_.o \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/mymodule_.o 

C_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/my_module_.d \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/mymodule_.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


