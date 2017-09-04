within Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks;
block Microcontroller "Use as an inner block, defining the characteristics of the STM32F4 microcontroller"
  import Modelica.SIunits;
  import Modelica_DeviceDrivers;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Constants;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types;
  extends Modelica_DeviceDrivers.Utilities.Icons.GenericIC;
  constant Types.Platform platform annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant SIunits.Frequency desiredFrequency=if desiredPeriod==0 then 0 else (1/desiredPeriod) "the frequency the progam should be synchronized, if not expicit given, calculate from desiredPeriod" annotation(Dialog(
    enable = true,
    tab = "Real-time",
    group = "Constants"));
  constant SIunits.Time desiredPeriod=0 "Period the program should be synchronized" annotation(Dialog(
    enable = true,
    tab = "Real-time",
    group = "Constants"));
  constant Types.Clock clock annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.PLLM pllM "VCO input frequency = PLL input clock frequency / PLLM, should be between 1 and 2" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.PLLN pllN "VCO output frequency = VCO input frequency × PLLN" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.PLLP pllP "PLL output clock frequency = VCO frequency / PLLP" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.PLLQ pllQ "USB OTG FS clock frequency = VCO frequency / PLLQ" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.AHBPre ahbPre "AHB prescalor" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.APBPre apb1Pre "APB Low speed prescaler, max 42 MHz" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.APBPre apb2Pre "APB high-speed prescaler, max 84 MHz" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Types.PWRRegulatorVoltage pwrRegVoltage "Power regulator voltage" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Boolean overdrive "dependend on mcu, clk frequency can be extended to 168 or 180 MHz" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Boolean preFlash "flag for enabling preflash" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  annotation(missingInnerMessage = "Missing inner block for STM32F4 microcontroller (this cannot have default values since the microcontrollers are all different).",
             defaultComponentName="mcu",
             defaultComponentPrefixes="inner",
             Icon(graphics = {Text(origin = {0, 0}, lineColor = {255, 255, 255}, extent = {{-50, -50}, {50, 50}}, textString = "STM32F4\n%platform", fontSize = 30, fontName = "Arial", textStyle = {TextStyle.Bold})}, coordinateSystem(initialScale = 0.1)));
end Microcontroller;
