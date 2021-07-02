##  Created on: 1993-01-09
##  Created by: Kiran
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_BSplineCurve"
discard "forward decl of IGESGeom_BSplineCurve"
type
  HandleIGESGeomBSplineCurve* = Handle[IGESGeomBSplineCurve]

## ! defines IGESBSplineCurve, Type <126> Form <0-5>
## ! in package IGESGeom
## ! A parametric equation obtained by dividing two summations
## ! involving weights (which are real numbers), the control
## ! points, and B-Spline basis functions

type
  IGESGeomBSplineCurve* {.importcpp: "IGESGeom_BSplineCurve",
                         header: "IGESGeom_BSplineCurve.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomBSplineCurve*(): IGESGeomBSplineCurve {.constructor,
    importcpp: "IGESGeom_BSplineCurve(@)", header: "IGESGeom_BSplineCurve.hxx".}
proc init*(this: var IGESGeomBSplineCurve; anIndex: StandardInteger;
          aDegree: StandardInteger; aPlanar: StandardBoolean;
          aClosed: StandardBoolean; aPolynom: StandardBoolean;
          aPeriodic: StandardBoolean; allKnots: Handle[TColStdHArray1OfReal];
          allWeights: Handle[TColStdHArray1OfReal];
          allPoles: Handle[TColgpHArray1OfXYZ]; aUmin: StandardReal;
          aUmax: StandardReal; aNorm: GpXYZ) {.importcpp: "Init",
    header: "IGESGeom_BSplineCurve.hxx".}
proc setFormNumber*(this: var IGESGeomBSplineCurve; form: StandardInteger) {.
    importcpp: "SetFormNumber", header: "IGESGeom_BSplineCurve.hxx".}
proc upperIndex*(this: IGESGeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "UpperIndex", header: "IGESGeom_BSplineCurve.hxx".}
proc degree*(this: IGESGeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "Degree", header: "IGESGeom_BSplineCurve.hxx".}
proc isPlanar*(this: IGESGeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPlanar", header: "IGESGeom_BSplineCurve.hxx".}
proc isClosed*(this: IGESGeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESGeom_BSplineCurve.hxx".}
proc isPolynomial*(this: IGESGeomBSplineCurve;
                  flag: StandardBoolean = standardFalse): StandardBoolean {.
    noSideEffect, importcpp: "IsPolynomial", header: "IGESGeom_BSplineCurve.hxx".}
proc isPeriodic*(this: IGESGeomBSplineCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "IGESGeom_BSplineCurve.hxx".}
proc nbKnots*(this: IGESGeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "NbKnots", header: "IGESGeom_BSplineCurve.hxx".}
proc knot*(this: IGESGeomBSplineCurve; anIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Knot", header: "IGESGeom_BSplineCurve.hxx".}
proc nbPoles*(this: IGESGeomBSplineCurve): StandardInteger {.noSideEffect,
    importcpp: "NbPoles", header: "IGESGeom_BSplineCurve.hxx".}
proc weight*(this: IGESGeomBSplineCurve; anIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "Weight", header: "IGESGeom_BSplineCurve.hxx".}
proc pole*(this: IGESGeomBSplineCurve; anIndex: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "Pole", header: "IGESGeom_BSplineCurve.hxx".}
proc transformedPole*(this: IGESGeomBSplineCurve; anIndex: StandardInteger): GpPnt {.
    noSideEffect, importcpp: "TransformedPole", header: "IGESGeom_BSplineCurve.hxx".}
proc uMin*(this: IGESGeomBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "UMin", header: "IGESGeom_BSplineCurve.hxx".}
proc uMax*(this: IGESGeomBSplineCurve): StandardReal {.noSideEffect,
    importcpp: "UMax", header: "IGESGeom_BSplineCurve.hxx".}
proc normal*(this: IGESGeomBSplineCurve): GpXYZ {.noSideEffect, importcpp: "Normal",
    header: "IGESGeom_BSplineCurve.hxx".}
type
  IGESGeomBSplineCurvebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_BSplineCurve::get_type_name(@)",
                            header: "IGESGeom_BSplineCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_BSplineCurve::get_type_descriptor(@)",
    header: "IGESGeom_BSplineCurve.hxx".}
proc dynamicType*(this: IGESGeomBSplineCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_BSplineCurve.hxx".}

