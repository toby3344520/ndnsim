################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyCXX.cxx 

C_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyC.c \
../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/main.c 

CXX_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyCXX.d 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyC.o \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyCXX.o \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/main.o 

C_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/VerifyC.d \
./AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/main.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/build/cmake-2.8.11.2-Linux-i386/share/cmake-2.8/Modules/FortranCInterface/Verify/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


