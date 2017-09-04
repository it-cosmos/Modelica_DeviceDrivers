within Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks;
block ClockConfig "A pseudo realtime synchronization"
  import Modelica.SIunits;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Constants;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions.HAL;
  outer Microcontroller mcu;
  constant HAL.Init hal annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
protected
  constant Types.Clock clock = mcu.clock;
  constant Types.PLLM pllM = mcu.pllM;
  constant Types.PLLN pllN = mcu.pllN;
  constant Types.PLLP pllP = mcu.pllP;
  constant Types.PLLQ pllQ = mcu.pllQ;
  constant Types.AHBPre ahbPre = mcu.ahbPre;
  constant Types.APBPre apb1Pre = mcu.apb1Pre;
  constant Types.APBPre apb2Pre = mcu.apb2Pre;
  constant Types.PWRRegulatorVoltage pwrRegVoltage = mcu.pwrRegVoltage;   constant Boolean overdrive = mcu.overdrive;
  constant Boolean preFlash = mcu.preFlash;
  Functions.ClockConfig.Init clockConf = Functions.ClockConfig.Init(hal, clock, pllM, pllN, pllP,pllQ, ahbPre, apb1Pre, apb2Pre, pwrRegVoltage, overdrive, preFlash);
annotation(Icon(graphics = {Text(extent = {{-100, -100}, {100, 100}}, textString = "Clock configuration", fontName = "Arial")}, coordinateSystem(initialScale = 0.1)));
end ClockConfig;
