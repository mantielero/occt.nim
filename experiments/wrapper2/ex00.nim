#import occt/occt
#import occt/BRepPrimAPI/[BRepPrimAPI_MakeCylinder, BRepPrimAPI_MakeBox]
#import occt/BRepAlgoAPI/BRepAlgoAPI_Cut
#import occt/BRepGProp/BRepGProp
#import occt/STEPControl/STEPControl_Writer
#import occt/GProp/GProp_GProps
import occt/gp/gp_includes
#include "BRepGProp.hxx"
#include "STEPControl_Writer.hxx"
#include "GProp_GProps.hxx"
let
  myWidth = 50.0
  myThickness = 20.0
  myHeight = 70.0
  aPnt1 = constructPnt(-myWidth / 2.0, 0.0, 0.0)

echo aPnt1.x