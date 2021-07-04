##  Created on: 1994-09-29
##  Created by: Dieter THIEMANN
##  Copyright (c) 1994-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Geom2d_Curve"
discard "forward decl of Geom_Surface"
type
  UnitsMethods* {.importcpp: "UnitsMethods", header: "UnitsMethods.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Initializes
                                                                                   ## the
                                                                                   ## 3
                                                                                   ## factors
                                                                                   ## for
                                                                                   ## the
                                                                                   ## conversion
                                                                                   ## of
                                                                                   ##
                                                                                   ## !
                                                                                   ## units


proc InitializeFactors*(LengthFactor: Standard_Real;
                       PlaneAngleFactor: Standard_Real;
                       SolidAngleFactor: Standard_Real) {.
    importcpp: "UnitsMethods::InitializeFactors(@)", header: "UnitsMethods.hxx".}
proc LengthFactor*(): Standard_Real {.importcpp: "UnitsMethods::LengthFactor(@)",
                                   header: "UnitsMethods.hxx".}
proc PlaneAngleFactor*(): Standard_Real {.importcpp: "UnitsMethods::PlaneAngleFactor(@)",
                                       header: "UnitsMethods.hxx".}
proc SolidAngleFactor*(): Standard_Real {.importcpp: "UnitsMethods::SolidAngleFactor(@)",
                                       header: "UnitsMethods.hxx".}
proc Set3dConversion*(B: Standard_Boolean) {.
    importcpp: "UnitsMethods::Set3dConversion(@)", header: "UnitsMethods.hxx".}
proc Convert3d*(): Standard_Boolean {.importcpp: "UnitsMethods::Convert3d(@)",
                                   header: "UnitsMethods.hxx".}
proc RadianToDegree*(C: handle[Geom2d_Curve]; S: handle[Geom_Surface]): handle[
    Geom2d_Curve] {.importcpp: "UnitsMethods::RadianToDegree(@)",
                   header: "UnitsMethods.hxx".}
proc DegreeToRadian*(C: handle[Geom2d_Curve]; S: handle[Geom_Surface]): handle[
    Geom2d_Curve] {.importcpp: "UnitsMethods::DegreeToRadian(@)",
                   header: "UnitsMethods.hxx".}
proc MirrorPCurve*(C: handle[Geom2d_Curve]): handle[Geom2d_Curve] {.
    importcpp: "UnitsMethods::MirrorPCurve(@)", header: "UnitsMethods.hxx".}
proc GetLengthFactorValue*(param: Standard_Integer): Standard_Real {.
    importcpp: "UnitsMethods::GetLengthFactorValue(@)", header: "UnitsMethods.hxx".}
proc GetCasCadeLengthUnit*(): Standard_Real {.
    importcpp: "UnitsMethods::GetCasCadeLengthUnit(@)", header: "UnitsMethods.hxx".}
proc SetCasCadeLengthUnit*(param: Standard_Integer) {.
    importcpp: "UnitsMethods::SetCasCadeLengthUnit(@)", header: "UnitsMethods.hxx".}