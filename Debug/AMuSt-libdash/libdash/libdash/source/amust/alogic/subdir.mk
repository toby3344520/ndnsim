################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-always-lowest.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-buffer-based.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-dashjs.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-manual.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-and-buffer-based.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-based.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-aggressive.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-conservative.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-normal.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-rate-based.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic.cpp \
../AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-no-logic.cpp 

OBJS += \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-always-lowest.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-buffer-based.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-dashjs.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-manual.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-and-buffer-based.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-based.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-aggressive.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-conservative.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-normal.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-rate-based.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic.o \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-no-logic.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-always-lowest.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-buffer-based.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-dashjs.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-manual.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-and-buffer-based.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-rate-based.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-aggressive.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-conservative.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based-normal.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-buffer-based.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic-svc-rate-based.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-logic.d \
./AMuSt-libdash/libdash/libdash/source/amust/alogic/adaptation-no-logic.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/libdash/source/amust/alogic/%.o: ../AMuSt-libdash/libdash/libdash/source/amust/alogic/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


