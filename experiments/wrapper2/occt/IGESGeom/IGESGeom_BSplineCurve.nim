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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TColStd/TColStd_HArray1OfReal,
  ../TColgp/TColgp_HArray1OfXYZ, ../Standard/Standard_Real, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_BSplineCurve"
discard "forward decl of IGESGeom_BSplineCurve"
type
  Handle_IGESGeom_BSplineCurve* = handle[IGESGeom_BSplineCurve]

## ! defines IGESBSplineCurve, Type <126> Form <0-5>
## ! in package IGESGeom
## ! A parametric equation obtained by dividing two summations
## ! involving weights (which are real numbers), the control
## ! points, and B-Spline basis functions

type
  IGESGeom_BSplineCurve* {.importcpp: "IGESGeom_BSplineCurve",
                          header: "IGESGeom_BSplineCurve.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_BSplineCurve*(): IGESGeom_BSplineCurve {.constructor,
    importcpp: "IGESGeom_BSplineCurve(@)", header: "IGESGeom_BSplineCurve.hxx".}
proc Init*(this: var IGESGeom_BSplineCurve; anIndex: Standard_Integer;
          aDegree: Standard_Integer; aPlanar: Standard_Boolean;
          aClosed: Standard_Boolean; aPolynom: Standard_Boolean;
          aPeriodic: Standard_Boolean; allKnots: handle[TColStd_HArray1OfReal];
          allWeights: handle[TColStd_HArray1OfReal];
          allPoles: handle[TColgp_HArray1OfXYZ]; aUmin: Standard_Real;
          aUmax: Standard_Real; aNorm: gp_XYZ) {.importcpp: "Init",
    header: "IGESGeom_BSplineCurve.hxx".}
proc SetFormNumber*(this: var IGESGeom_BSplineCurve; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESGeom_BSplineCurve.hxx".}
proc UpperIndex*(this: IGESGeom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "UpperIndex", header: "IGESGeom_BSplineCurve.hxx".}
proc Degree*(this: IGESGeom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "Degree", header: "IGESGeom_BSplineCurve.hxx".}
proc IsPlanar*(this: IGESGeom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanar", header: "IGESGeom_BSplineCurve.hxx".}
proc IsClosed*(this: IGESGeom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosed", header: "IGESGeom_BSplineCurve.hxx".}
proc IsPolynomial*(this: IGESGeom_BSplineCurve;
                  flag: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolynomial", header: "IGESGeom_BSplineCurve.hxx".}
proc IsPeriodic*(this: IGESGeom_BSplineCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "IGESGeom_BSplineCurve.hxx".}
proc NbKnots*(this: IGESGeom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbKnots", header: "IGESGeom_BSplineCurve.hxx".}
proc Knot*(this: IGESGeom_BSplineCurve; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Knot", header: "IGESGeom_BSplineCurve.hxx".}
proc NbPoles*(this: IGESGeom_BSplineCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbPoles", header: "IGESGeom_BSplineCurve.hxx".}
proc Weight*(this: IGESGeom_BSplineCurve; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight", header: "IGESGeom_BSplineCurve.hxx".}
proc Pole*(this: IGESGeom_BSplineCurve; anIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Pole", header: "IGESGeom_BSplineCurve.hxx".}
proc TransformedPole*(this: IGESGeom_BSplineCurve; anIndex: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "TransformedPole", header: "IGESGeom_BSplineCurve.hxx".}
proc UMin*(this: IGESGeom_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "UMin", header: "IGESGeom_BSplineCurve.hxx".}
proc UMax*(this: IGESGeom_BSplineCurve): Standard_Real {.noSideEffect,
    importcpp: "UMax", header: "IGESGeom_BSplineCurve.hxx".}
proc Normal*(this: IGESGeom_BSplineCurve): gp_XYZ {.noSideEffect,
    importcpp: "Normal", header: "IGESGeom_BSplineCurve.hxx".}
type
  IGESGeom_BSplineCurvebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_BSplineCurve::get_type_name(@)",
                              header: "IGESGeom_BSplineCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_BSplineCurve::get_type_descriptor(@)",
    header: "IGESGeom_BSplineCurve.hxx".}
proc DynamicType*(this: IGESGeom_BSplineCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_BSplineCurve.hxx".}