/* FreeEMS - the open source engine management system
 *
 * Copyright 2008-2012 Fred Cooke
 *
 * This file is part of the FreeEMS project.
 *
 * FreeEMS software is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FreeEMS software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with any FreeEMS software.  If not, see http://www.gnu.org/licenses/
 *
 * We ask that if you make any changes to this file you email them upstream to
 * us at admin(at)diyefi(dot)org or, even better, fork the code on github.com!
 *
 * Thank you for choosing FreeEMS to run your engine!
 */


/** @file
 *
 * @ingroup allHeaders
 * @ingroup globalHeaders
 * @ingroup dataStructures
 *
 * @brief Struct typedefs for fixed configuration
 *
 * This file contains the struct data type definitions for fixed configuration items.
 *
 * Fixed, in this context means that it typically is not tuned in a live way
 * and therefore should not be cached in RAM while running. Usually these are
 * values that do not change such as cylinder volume, injector size, cylinder
 * count and other constants related to physical aspects of the engine setup.
 * When adding configuration values, please consider adding them here first.
 * If a value doesn't need to be live tunable definitely put it here instead.
 */


/* Header file multiple inclusion protection courtesy eclipse Header Template */
/* and http://gcc.gnu.org/onlinedocs/gcc-3.1.1/cpp/ C pre processor manual    */
#ifndef FILE_FIXED_CONFIGS_H_SEEN
#define FILE_FIXED_CONFIGS_H_SEEN


/// Decoder and scheduling settings
typedef struct {
	unsigned short accelerationInputEventTimeTolerance; ///< This will be replaced: http://issues.freeems.org/view.php?id=118
	unsigned short decelerationInputEventTimeTolerance; ///< This will be replaced: http://issues.freeems.org/view.php?id=118
} decoderSetting;


#define SOURCE_NORMAL 0
#define SOURCE_PRESET 1
#define SOURCE_LINEAR 2 ///< Read from the normal ADC pin, but process linearly. For bench use, mainly.

/**
 * Configuration that controls how the values of variables are determined.
 */
typedef struct {
	unsigned char BRV;
	unsigned char CHT;
	unsigned char IAT;
} sensorSource;


/** @brief Preset values for inputs and other variables
 *
 * In some cases you may want to ignore input readings and just use some
 * configured value for a particular sensor. These are the values used when you
 * choose to use a fixed reading instead of the real thing.
 */
typedef struct {
	unsigned short presetIAT;   ///< Preset variable value to override calculated values.
	unsigned short presetCHT;   ///< @copydoc presetIAT
	unsigned short presetBRV;   ///< @copydoc presetIAT

	unsigned short failsafeIATIgnition;  ///< Value to fall back on if a sensor fault is detected
	unsigned short failsafeIATInjection; ///< @copydoc failsafeIATIgnition
	unsigned short failsafeCHT; ///< @copydoc failsafeIATIgnition
	unsigned short failsafeBRV; ///< @copydoc failsafeIATIgnition
	unsigned short failsafeMAP; ///< @copydoc failsafeIATIgnition
	unsigned short failsafeAAP; ///< @copydoc failsafeIATIgnition
	unsigned short failsafeTPS; ///< @copydoc failsafeIATIgnition
} sensorPreset;


/// Ranges for sensors with linear config
typedef struct {
	signed short   MAPMinimum;    ///< Vacuum required to make the sensor reach 0 Volt output. Theoretical only, most do not rail.
	unsigned short MAPRange;      ///< Number of kPa between 0 Volts and 5 Volts.
	unsigned short AAPMinimum;    ///< @copydoc MAPMinimum
	unsigned short AAPRange;      ///< @copydoc MAPRange
	unsigned short EGOMinimum;    ///< Lambda that 0 Volt input corresponds to.
	unsigned short EGORange;      ///< Lambda difference between what 0V and 5V inputs correspond to.
	unsigned short BRVMinimum;    ///< Battery Voltage that 0 Volt input means. 0 Volts usually. TODO YAGNI usually? always? what/why?
	unsigned short BRVRange;      ///< TODO reword when above is fixed. Real world voltage difference between lowest and highest ADC reading (0 to 5V). FreeEMS standard is 24.5 Volts for 1k and 3k9 resistors on a 12v vehicle.
	unsigned short TPSMinimumADC; ///< This should be zero, but often isn't, this value is what the TPS input reads with the throttle fully closed.
	unsigned short TPSMaximumADC; ///< This should be the maximum ADC value, but often isn't. This value is what the TPS input reads with the throttle fully open.
} sensorRange;


/// Fuel injection settings
typedef struct {
	unsigned short perCylinderVolume;  ///< 500cc = 0.5l 0.5 * 32768 = pcv, so divide by 32768 go get litres */
	unsigned short injectorFlow;       ///< Injector flow of 240cc/min / 60 is 4ml/second is multiplied by 1024, so divide by 1024 for ml/second, divide by 1000 for litres/second */
	unsigned short stoichiometricAFR;  ///< 34 for hydrogen, all others less, figure is 14.7 * 1024, divide by 1024 to get AFR */
	unsigned short densityOfFuelAtSTP; ///< 703gm/litre for Octane. 32 * fuel density = number, divide by 32 for the real figure */
} engineSetting;


/// Settings related to serial communications
typedef struct {
	unsigned short baudDivisor; ///< The number used to set the data rate. 22 = (40MHz / (16*115.2kHz)) = 21.7013889
} serialSetting;


/// Settings for coarse bit bang outputs
typedef struct {
	unsigned char outputActions[256]; ///< Nothing, On, Off, Toggle for each input event.
	unsigned char* ports[4];         ///< The addresses of the port control registers.
	unsigned char  masks[4];         ///< The masks to apply to the ports above.
	unsigned char numberConfigured;  ///< How many to loop through, max of 4
} coarseBitBangSetting;


/// Settings for ignition and injection output scheduling
typedef struct {
	unsigned short anglesOfTDC[MAX_NUMBER_OF_OUTPUT_EVENTS];                ///< The effective TDC angle of the event in question.
	unsigned char outputEventPinNumbers[MAX_NUMBER_OF_OUTPUT_EVENTS];       ///< Which of the 6 pins should be associated with this event
	unsigned char schedulingConfigurationBits[MAX_NUMBER_OF_OUTPUT_EVENTS]; ///< 0 = ignition, 1 = injection
	unsigned short decoderEngineOffset;
	/**<
	 * Add decoderEngineOffset to code degrees to find 0/TDC for cyl/output 1
	 * or subtract from real degrees to get code degrees. Make this number
	 * larger to advance the base timing, make it smaller to retard it. IE, if
	 * you have 10btdc in your table, flat, and a timing light shows 5btdc on
	 * the engine, then increase this number by 5 degrees. More here:
	 *
	 * http://forum.diyefi.org/viewtopic.php?f=54&t=1523
	 */
	unsigned char numberOfConfiguredOutputEvents;   ///< Should match the used section of the three arrays above
	unsigned char numberOfInjectionsPerEngineCycle; ///< How much to divide the fuel pulse width by to get the per injection fuel pulse width
} schedulingSetting;


/// Enable flags for each cut
typedef struct {
	unsigned InjectionRPM :1; ///< @todo document this
	unsigned IgnitionRPM  :1; ///< @todo document this
	unsigned InjOverBoost :1; ///< @todo document this
	unsigned IgnOverBoost :1; ///< @todo document this
	unsigned Spare0 :1;
	unsigned Spare1 :1;
	unsigned Spare2 :1;
	unsigned Spare3 :1;
	unsigned Spare4 :1;
	unsigned Spare5 :1;
	unsigned Spare6 :1;
	unsigned Spare7 :1;
	unsigned Spare8 :1;
	unsigned Spare9 :1;
	unsigned SpareA :1;
	unsigned SpareB :1;
} cutEnabled;


/// Single cut/limiter
typedef struct {
	unsigned short disableThreshold;  ///< Level at which to disable outputs
	unsigned short reenableThreshold; ///< Level at which to re-enable outputs
} singleCut;


/// Cuts and limiters
typedef struct { // Comment represents normal and recommended cut type
	singleCut InjectionRPM;       ///< Injection, enabled by default at 5k with both and 200 RPM hysteresis
	singleCut IgnitionRPM;        ///< Ignition, enabled by default at 5k with both and 220 RPM hysteresis to ensure not lean when power comes back on
	singleCut OverBoost;          ///< Ignition, enabled by default, set to rail value for sensor, with large hysteresis, requires time out to operate safely

	// Disabled by default until duties are available, then enabled and fuel duty hard coded, elec duty optional, re enabled by time out not just hysteresis
//	singleCut InjectionFuelDuty;  ///< Both, disabled by default, until duties are available
//	singleCut InjectionElecDuty;  ///< Both, disabled by default, until duties are available

	// These require other logic in addition to the generic logic:
//	singleCut TwoStep;            ///< Ignition only or both, disabled by default
//	singleCut OverHeat;           ///< Ignition only or both, disabled by default
//	singleCut Overrun;            ///< Injection, disabled by default
//	singleCut FloodClear;         ///< Injection, disabled by default
	cutEnabled cutsEnabled;       ///< Override hard code on for desired fuel duty not to exceed 102.4% or similar
} cutAndLimiterSetting;


typedef struct {
	unsigned short* variable;
	unsigned short upperValue;
	unsigned short lowerValue;
	unsigned char* port;
	unsigned char mask;
	unsigned char flags; // for go high or low on success.
} singleSimpleGPOutput;


#define NUMBER_OF_OUTPUT_CONFIGS 8
typedef struct {
	singleSimpleGPOutput outputConfigs[NUMBER_OF_OUTPUT_CONFIGS];
	unsigned char numberConfigured;
	unsigned char spare;
} simpleGPIOSetting;


/// Settings related to sensor reading
typedef struct {
	unsigned short readingTimeout; ///< How often an ADC reading MUST occur.
	unsigned char numberOfADCsToRead;
	unsigned char spare8bitConfig;
} sensorSetting;


#define LOAD_MAP 0
#define LOAD_TPS 1
#define LOAD_MAF 2
#define LOAD_AAP 3

#define ALGO_SPEED_DENSITY 0
#define ALGO_ALPHA_N       1
#define ALGO_MAF           2

/// Settings for fueling algorithms
typedef struct {
	unsigned char loadType;
	unsigned char algorithmType;
} algorithmSetting;

#define userTextFieldArrayLength1 (flashSectorSize - (sizeof(engineSetting) + sizeof(serialSetting) + sizeof(coarseBitBangSetting) + sizeof(schedulingSetting) + sizeof(cutAndLimiterSetting) + sizeof(simpleGPIOSetting)))
/**
 * One of two structs of fixed configuration data such as physical parameters etc.
 *
 * If you add something here, please ensure you update all of the following :
 * - Default values in the initial definitions in FixedConfig1.c and FixedConfig2.c
 * - The lookupBlockDetails() function in blockDetailsLookup.c
 * - The JSON data map and other related firmware interface definition files
 */
typedef struct {
	engineSetting engineSettings; ///< @see engineSetting
	serialSetting serialSettings; ///< @see serialSetting
	coarseBitBangSetting coarseBitBangSettings; ///< @see coarseBitBangSetting
	schedulingSetting schedulingSettings;       ///< @see schedulingSetting
	cutAndLimiterSetting cutAndLimiterSettings; ///< @see cutAndLimiterSetting
	simpleGPIOSetting simpleGPIOSettings;       ///< @see simpleGPIOSetting
	unsigned char userTextField[userTextFieldArrayLength1]; ///< For on-board meta-data such as which vehicle the unit is from, put your personal tuning notes here!
} fixedConfig1;


#define userTextFieldArrayLength2 (flashSectorSize - (sizeof(sensorSource) + sizeof(sensorPreset) + sizeof(sensorRange) + sizeof(sensorSetting) + sizeof(algorithmSetting) + sizeof(decoderSetting)))
/** @copydoc fixedConfig1 */
typedef struct {
	sensorSource sensorSources;                              ///< @see sensorSource
	sensorPreset sensorPresets;                              ///< @see sensorPreset
	sensorRange sensorRanges;                                ///< @see sensorRange
	sensorSetting sensorSettings;                            ///< @see sensorSetting
	algorithmSetting algorithmSettings;                      ///< @see algorithmSetting
	decoderSetting decoderSettings;                          ///< @see decoderSetting
	unsigned char userTextField2[userTextFieldArrayLength2]; ///< For on-board meta-data such as which vehicle the unit is from, put your personal tuning notes here!
} fixedConfig2;


#else
	/* let us know if we are being untidy with headers */
	#warning "Header file FIXED_CONFIGS_H seen before, sort it out!"
/* end of the wrapper ifdef from the very top */
#endif
