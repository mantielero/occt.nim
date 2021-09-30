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


proc initializeFactors*(lengthFactor: cfloat; planeAngleFactor: cfloat;
                       solidAngleFactor: cfloat) {.
    importcpp: "UnitsMethods::InitializeFactors(@)", header: "UnitsMethods.hxx".}
proc lengthFactor*(): cfloat {.importcpp: "UnitsMethods::LengthFactor(@)",
                            header: "UnitsMethods.hxx".}
proc planeAngleFactor*(): cfloat {.importcpp: "UnitsMethods::PlaneAngleFactor(@)",
                                header: "UnitsMethods.hxx".}
proc solidAngleFactor*(): cfloat {.importcpp: "UnitsMethods::SolidAngleFactor(@)",
                                header: "UnitsMethods.hxx".}
proc set3dConversion*(b: bool) {.importcpp: "UnitsMethods::Set3dConversion(@)",
                              header: "UnitsMethods.hxx".}
proc convert3d*(): bool {.importcpp: "UnitsMethods::Convert3d(@)",
                       header: "UnitsMethods.hxx".}
proc radianToDegree*(c: Handle[Geom2dCurve]; s: Handle[GeomSurface]): Handle[
    Geom2dCurve] {.importcpp: "UnitsMethods::RadianToDegree(@)",
                  header: "UnitsMethods.hxx".}
proc degreeToRadian*(c: Handle[Geom2dCurve]; s: Handle[GeomSurface]): Handle[
    Geom2dCurve] {.importcpp: "UnitsMethods::DegreeToRadian(@)",
                  header: "UnitsMethods.hxx".}
proc mirrorPCurve*(c: Handle[Geom2dCurve]): Handle[Geom2dCurve] {.
    importcpp: "UnitsMethods::MirrorPCurve(@)", header: "UnitsMethods.hxx".}
proc getLengthFactorValue*(param: cint): cfloat {.
    importcpp: "UnitsMethods::GetLengthFactorValue(@)", header: "UnitsMethods.hxx".}
proc getCasCadeLengthUnit*(): cfloat {.importcpp: "UnitsMethods::GetCasCadeLengthUnit(@)",
                                    header: "UnitsMethods.hxx".}
proc setCasCadeLengthUnit*(param: cint) {.importcpp: "UnitsMethods::SetCasCadeLengthUnit(@)",
                                       header: "UnitsMethods.hxx".}

























