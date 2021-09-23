##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
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
  ../TColStd/TColStd_HArray2OfReal, ../TColgp/TColgp_HArray2OfXYZ,
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_BSplineSurface"
discard "forward decl of IGESGeom_BSplineSurface"
type
  Handle_IGESGeom_BSplineSurface* = handle[IGESGeom_BSplineSurface]

## ! defines IGESBSplineSurface, Type <128> Form <0-9>
## ! in package IGESGeom
## ! A parametric equation obtained by dividing two summations
## ! involving weights (which are real numbers), the control
## ! points, and B-Spline basis functions

type
  IGESGeom_BSplineSurface* {.importcpp: "IGESGeom_BSplineSurface",
                            header: "IGESGeom_BSplineSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_BSplineSurface*(): IGESGeom_BSplineSurface {.constructor,
    importcpp: "IGESGeom_BSplineSurface(@)", header: "IGESGeom_BSplineSurface.hxx".}
proc Init*(this: var IGESGeom_BSplineSurface; anIndexU: Standard_Integer;
          anIndexV: Standard_Integer; aDegU: Standard_Integer;
          aDegV: Standard_Integer; aCloseU: Standard_Boolean;
          aCloseV: Standard_Boolean; aPolynom: Standard_Boolean;
          aPeriodU: Standard_Boolean; aPeriodV: Standard_Boolean;
          allKnotsU: handle[TColStd_HArray1OfReal];
          allKnotsV: handle[TColStd_HArray1OfReal];
          allWeights: handle[TColStd_HArray2OfReal];
          allPoles: handle[TColgp_HArray2OfXYZ]; aUmin: Standard_Real;
          aUmax: Standard_Real; aVmin: Standard_Real; aVmax: Standard_Real) {.
    importcpp: "Init", header: "IGESGeom_BSplineSurface.hxx".}
proc SetFormNumber*(this: var IGESGeom_BSplineSurface; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESGeom_BSplineSurface.hxx".}
proc UpperIndexU*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "UpperIndexU", header: "IGESGeom_BSplineSurface.hxx".}
proc UpperIndexV*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "UpperIndexV", header: "IGESGeom_BSplineSurface.hxx".}
proc DegreeU*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "DegreeU", header: "IGESGeom_BSplineSurface.hxx".}
proc DegreeV*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "DegreeV", header: "IGESGeom_BSplineSurface.hxx".}
proc IsClosedU*(this: IGESGeom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosedU", header: "IGESGeom_BSplineSurface.hxx".}
proc IsClosedV*(this: IGESGeom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsClosedV", header: "IGESGeom_BSplineSurface.hxx".}
proc IsPolynomial*(this: IGESGeom_BSplineSurface;
                  flag: Standard_Boolean = Standard_False): Standard_Boolean {.
    noSideEffect, importcpp: "IsPolynomial", header: "IGESGeom_BSplineSurface.hxx".}
proc IsPeriodicU*(this: IGESGeom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodicU", header: "IGESGeom_BSplineSurface.hxx".}
proc IsPeriodicV*(this: IGESGeom_BSplineSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsPeriodicV", header: "IGESGeom_BSplineSurface.hxx".}
proc NbKnotsU*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbKnotsU", header: "IGESGeom_BSplineSurface.hxx".}
proc NbKnotsV*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbKnotsV", header: "IGESGeom_BSplineSurface.hxx".}
proc KnotU*(this: IGESGeom_BSplineSurface; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "KnotU", header: "IGESGeom_BSplineSurface.hxx".}
proc KnotV*(this: IGESGeom_BSplineSurface; anIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "KnotV", header: "IGESGeom_BSplineSurface.hxx".}
proc NbPolesU*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbPolesU", header: "IGESGeom_BSplineSurface.hxx".}
proc NbPolesV*(this: IGESGeom_BSplineSurface): Standard_Integer {.noSideEffect,
    importcpp: "NbPolesV", header: "IGESGeom_BSplineSurface.hxx".}
proc Weight*(this: IGESGeom_BSplineSurface; anIndex1: Standard_Integer;
            anIndex2: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Weight", header: "IGESGeom_BSplineSurface.hxx".}
proc Pole*(this: IGESGeom_BSplineSurface; anIndex1: Standard_Integer;
          anIndex2: Standard_Integer): gp_Pnt {.noSideEffect, importcpp: "Pole",
    header: "IGESGeom_BSplineSurface.hxx".}
proc TransformedPole*(this: IGESGeom_BSplineSurface; anIndex1: Standard_Integer;
                     anIndex2: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "TransformedPole", header: "IGESGeom_BSplineSurface.hxx".}
proc UMin*(this: IGESGeom_BSplineSurface): Standard_Real {.noSideEffect,
    importcpp: "UMin", header: "IGESGeom_BSplineSurface.hxx".}
proc UMax*(this: IGESGeom_BSplineSurface): Standard_Real {.noSideEffect,
    importcpp: "UMax", header: "IGESGeom_BSplineSurface.hxx".}
proc VMin*(this: IGESGeom_BSplineSurface): Standard_Real {.noSideEffect,
    importcpp: "VMin", header: "IGESGeom_BSplineSurface.hxx".}
proc VMax*(this: IGESGeom_BSplineSurface): Standard_Real {.noSideEffect,
    importcpp: "VMax", header: "IGESGeom_BSplineSurface.hxx".}
type
  IGESGeom_BSplineSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_BSplineSurface::get_type_name(@)",
                              header: "IGESGeom_BSplineSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_BSplineSurface::get_type_descriptor(@)",
    header: "IGESGeom_BSplineSurface.hxx".}
proc DynamicType*(this: IGESGeom_BSplineSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_BSplineSurface.hxx".}