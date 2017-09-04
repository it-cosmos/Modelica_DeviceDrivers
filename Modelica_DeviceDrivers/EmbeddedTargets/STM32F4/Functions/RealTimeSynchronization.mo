within Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions;
encapsulated package RealTimeSynchronization
extends .Modelica.Icons.Package;

function wait
  extends .Modelica.Icons.Function;
  input Init rt;
  external "C" MDD_stm32f4_rt_wait(rt)
  annotation (Include="#include \"MDDSTM32F4RealTime.h\"");
end wait;









class Init "Initialize STM32F4 real-time synchronization"
  extends ExternalObject;

  function constructor
    import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions.Timers;
    import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Types;
    import Modelica_DeviceDrivers.EmbeddedTargets.STM32F4.Functions.ClockConfig;
    extends .Modelica.Icons.Function;
    input ClockConfig.Init init;
    input Integer timerFrequency;
    input Integer timerPeriod;
    
    output Init rt;
    external "C" rt = MDD_stm32f4_rt_init(init, timerFrequency, timerPeriod)
    annotation (Include="#include \"MDDSTM32F4RealTime.h\"");
  end constructor;

  function destructor
    extends .Modelica.Icons.Function;
    input Init rt "Device handle";
    external "C" MDD_stm32f4_rt_close(rt)
    annotation (Include="#include \"MDDSTM32F4RealTime.h\"");
  end destructor;
end Init;

















end RealTimeSynchronization;
