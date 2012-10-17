within Modelica_DeviceDrivers.Blocks;
package Interfaces
    extends Modelica.Icons.InterfacesPackage;

  connector PackageIn "Packager input connector"
    import Modelica_DeviceDrivers.Packaging.SerialPackager;

    input Modelica_DeviceDrivers.Packaging.SerialPackager pkg;
    input Boolean trigger;
    input Real dummy;

    output Boolean backwardTrigger;
    output Integer userPkgBitSize;
    output Integer autoPkgBitSize;
    annotation (defaultComponentName="pkgIn",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}},
          initialScale=0.2), graphics={Rectangle(
            extent={{-100,40},{100,-40}},
            fillColor={255,255,0},
            fillPattern=FillPattern.Sphere,
            pattern=LinePattern.None,
            lineColor={0,0,0}),
          Line(
            points={{-100,-40},{0,40},{100,-40}},
            color={95,95,95},
            smooth=Smooth.None),
          Line(
            points={{-52,-40},{0,0},{50,-40}},
            color={95,95,95},
            smooth=Smooth.None)}),Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          initialScale=0.2)));
  end PackageIn;

  connector PackageOut "Packager output connector"
    import Modelica_DeviceDrivers.Packaging.SerialPackager;

    input Boolean backwardTrigger;
    input Integer userPkgBitSize;
    input Integer autoPkgBitSize;

    output Modelica_DeviceDrivers.Packaging.SerialPackager
                         pkg;
    output Boolean trigger;
    output Real dummy;

    annotation (defaultComponentName="pkgOut",
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}},
          initialScale=0.2), graphics={Rectangle(
            extent={{-100,40},{100,-40}},
            fillColor={255,255,0},
            fillPattern=FillPattern.Sphere,
            pattern=LinePattern.None,
            lineColor={0,0,0}),
          Line(
            points={{-100,40},{0,-40},{100,40}},
            color={95,95,95},
            smooth=Smooth.None),
          Line(
            points={{-50,40},{2,0},{52,40}},
            color={95,95,95},
            smooth=Smooth.None)}),Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          initialScale=0.2)));
  end PackageOut;

  connector SoftingCANOut
    import Modelica_DeviceDrivers.Communication.SoftingCAN;
    output Modelica_DeviceDrivers.Communication.SoftingCAN
                      softingCAN;
    input Real dummy;

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}},
          initialScale=0.2), graphics={Rectangle(
            extent={{-100,40},{100,-40}},
            fillColor={200,200,200},
            fillPattern=FillPattern.Sphere,
            pattern=LinePattern.None,
            lineColor={0,0,0}),
          Line(
            points={{-100,40},{0,-40},{100,40}},
            color={95,95,95},
            smooth=Smooth.None),
          Line(
            points={{-50,38},{2,-2},{52,38}},
            color={95,95,95},
            smooth=Smooth.None)}),Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          initialScale=0.2)));
  end SoftingCANOut;

  connector SoftingCANIn
    import Modelica_DeviceDrivers.Communication.SoftingCAN;
    input Modelica_DeviceDrivers.Communication.SoftingCAN
                     softingCAN;
    output Real dummy;

    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}},
          initialScale=0.2), graphics={Rectangle(
            extent={{-100,40},{100,-40}},
            fillColor={200,200,200},
            fillPattern=FillPattern.Sphere,
            pattern=LinePattern.None,
            lineColor={0,0,0}),
          Line(
            points={{-100,-40},{0,40},{100,-40}},
            color={95,95,95},
            smooth=Smooth.None),
          Line(
            points={{-52,-40},{0,0},{50,-40}},
            color={95,95,95},
            smooth=Smooth.None)}),Diagram(coordinateSystem(
          preserveAspectRatio=true,
          extent={{-100,-100},{100,100}},
          initialScale=0.2)));
  end SoftingCANIn;

  partial block PartialSoftingCANMessage

    Modelica_DeviceDrivers.Blocks.Interfaces.SoftingCANIn
                 softingCANBus
      annotation (Placement(transformation(extent={{-20,128},{20,88}})));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}),       graphics={                      Text(
            extent={{-142,100},{148,58}},
            lineColor={0,0,0},
            textString="%name"),           Bitmap(extent={{-40,-16},{40,-96}},
              fileName=
                "modelica://Modelica_DeviceDrivers/Resources/Images/Icons/package.PNG")}),
                                   Diagram(coordinateSystem(
            preserveAspectRatio=true,  extent={{-100,-100},{100,100}}),
          graphics));
  end PartialSoftingCANMessage;
end Interfaces;
