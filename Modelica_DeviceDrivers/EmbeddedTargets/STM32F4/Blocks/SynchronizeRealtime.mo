within Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Blocks;
block SynchronizeRealtime "A pseudo realtime synchronization"
  import Modelica.SIunits;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Constants;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions;
  import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions.ClockConfig;
  outer Microcontroller mcu;
  constant SIunits.Frequency desiredFrequency=mcu.desiredFrequency "Override the MCU global real-time settings" annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant ClockConfig.Init clockConf annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Integer timerFrequency annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  constant Integer timerPeriod annotation(Dialog(
    enable = true,
    tab = "General",
    group = "Constants"));
  final parameter Real actualInterval = timerPeriod/timerFrequency;
protected

  Functions.RealTimeSynchronization.Init sync =      Functions.RealTimeSynchronization.Init(clockConf, timerFrequency, timerPeriod);
  constant Integer desiredPeriod = if desiredFrequency == 0 then 0 else integer(floor(1000/desiredFrequency));
algorithm
  if not initial() then
    Functions.RealTimeSynchronization.wait(sync);
  end if;
annotation(Icon(graphics = {Text(extent = {{-100, -100}, {100, 100}}, textString = "Real-time:\n%desiredFrequency Hz", fontName = "Arial")}, coordinateSystem(initialScale = 0.1)));
end SynchronizeRealtime;
