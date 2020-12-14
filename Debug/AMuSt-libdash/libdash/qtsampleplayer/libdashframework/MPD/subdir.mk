################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AbstractRepresentationStream.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetHelper.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetStream.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/BaseUrlResolver.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/RepresentationStreamFactory.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentListStream.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentTemplateStream.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SingleMediaSegmentStream.cpp \
../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/TimeResolver.cpp 

OBJS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AbstractRepresentationStream.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetHelper.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetStream.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/BaseUrlResolver.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/RepresentationStreamFactory.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentListStream.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentTemplateStream.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SingleMediaSegmentStream.o \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/TimeResolver.o 

CPP_DEPS += \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AbstractRepresentationStream.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetHelper.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/AdaptationSetStream.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/BaseUrlResolver.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/RepresentationStreamFactory.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentListStream.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SegmentTemplateStream.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/SingleMediaSegmentStream.d \
./AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/TimeResolver.d 


# Each subdirectory must supply rules for building sources it contributes
AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/%.o: ../AMuSt-libdash/libdash/qtsampleplayer/libdashframework/MPD/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


