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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_BSplineSurface"
discard "forward decl of IGESGeom_BSplineSurface"
type
  HandleIGESGeomBSplineSurface* = Handle[IGESGeomBSplineSurface]

## ! defines IGESBSplineSurface, Type <128> Form <0-9>
## ! in package IGESGeom
## ! A parametric equation obtained by dividing two summations
## ! involving weights (which are real numbers), the control
## ! points, and B-Spline basis functions

type
  IGESGeomBSplineSurface* {.importcpp: "IGESGeom_BSplineSurface",
                           header: "IGESGeom_BSplineSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomBSplineSurface*(): IGESGeomBSplineSurface {.constructor,
    importcpp: "IGESGeom_BSplineSurface(@)", header: "IGESGeom_BSplineSurface.hxx".}
proc init*(this: var IGESGeomBSplineSurface; anIndexU: StandardInteger;
          anIndexV: StandardInteger; aDegU: StandardInteger; aDegV: StandardInteger;
          aCloseU: StandardBoolean; aCloseV: StandardBoolean;
          aPolynom: StandardBoolean; aPeriodU: StandardBoolean;
          aPeriodV: StandardBoolean; allKnotsU: Handle[TColStdHArray1OfReal];
          allKnotsV: Handle[TColStdHArray1OfReal];
          allWeights: Handle[TColStdHArray2OfReal];
          allPoles: Handle[TColgpHArray2OfXYZ]; aUmin: StandardReal;
          aUmax: StandardReal; aVmin: StandardReal; aVmax: StandardReal) {.
    importcpp: "Init", header: "IGESGeom_BSplineSurface.hxx".}
proc setFormNumber*(this: var IGESGeomBSplineSurface; form: StandardInteger) {.
    importcpp: "SetFormNumber", header: "IGESGeom_BSplineSurface.hxx".}
proc upperIndexU*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "UpperIndexU", header: "IGESGeom_BSplineSurface.hxx".}
proc upperIndexV*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "UpperIndexV", header: "IGESGeom_BSplineSurface.hxx".}
proc degreeU*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "DegreeU", header: "IGESGeom_BSplineSurface.hxx".}
proc degreeV*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "DegreeV", header: "IGESGeom_BSplineSurface.hxx".}
proc isClosedU*(this: IGESGeomBSplineSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsClosedU", header: "IGESGeom_BSplineSurface.hxx".}
proc isClosedV*(this: IGESGeomBSplineSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsClosedV", header: "IGESGeom_BSplineSurface.hxx".}
proc isPolynomial*(this: IGESGeomBSplineSurface;
                  flag: StandardBoolean = standardFalse): StandardBoolean {.
    noSideEffect, importcpp: "IsPolynomial", header: "IGESGeom_BSplineSurface.hxx".}
proc isPeriodicU*(this: IGESGeomBSplineSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodicU", header: "IGESGeom_BSplineSurface.hxx".}
proc isPeriodicV*(this: IGESGeomBSplineSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodicV", header: "IGESGeom_BSplineSurface.hxx".}
proc nbKnotsU*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "NbKnotsU", header: "IGESGeom_BSplineSurface.hxx".}
proc nbKnotsV*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "NbKnotsV", header: "IGESGeom_BSplineSurface.hxx".}
proc knotU*(this: IGESGeomBSplineSurface; anIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "KnotU", header: "IGESGeom_BSplineSurface.hxx".}
proc knotV*(this: IGESGeomBSplineSurface; anIndex: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "KnotV", header: "IGESGeom_BSplineSurface.hxx".}
proc nbPolesU*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "NbPolesU", header: "IGESGeom_BSplineSurface.hxx".}
proc nbPolesV*(this: IGESGeomBSplineSurface): StandardInteger {.noSideEffect,
    importcpp: "NbPolesV", header: "IGESGeom_BSplineSurface.hxx".}
proc weight*(this: IGESGeomBSplineSurface; anIndex1: StandardInteger;
            anIndex2: StandardInteger): StandardReal {.noSideEffect,
    importcpp: "Weight", header: "IGESGeom_BSplineSurface.hxx".}
proc pole*(this: IGESGeomBSplineSurface; anIndex1: StandardInteger;
          anIndex2: StandardInteger): GpPnt {.noSideEffect, importcpp: "Pole",
    header: "IGESGeom_BSplineSurface.hxx".}
proc transformedPole*(this: IGESGeomBSplineSurface; anIndex1: StandardInteger;
                     anIndex2: StandardInteger): GpPnt {.noSideEffect,
    importcpp: "TransformedPole", header: "IGESGeom_BSplineSurface.hxx".}
proc uMin*(this: IGESGeomBSplineSurface): StandardReal {.noSideEffect,
    importcpp: "UMin", header: "IGESGeom_BSplineSurface.hxx".}
proc uMax*(this: IGESGeomBSplineSurface): StandardReal {.noSideEffect,
    importcpp: "UMax", header: "IGESGeom_BSplineSurface.hxx".}
proc vMin*(this: IGESGeomBSplineSurface): StandardReal {.noSideEffect,
    importcpp: "VMin", header: "IGESGeom_BSplineSurface.hxx".}
proc vMax*(this: IGESGeomBSplineSurface): StandardReal {.noSideEffect,
    importcpp: "VMax", header: "IGESGeom_BSplineSurface.hxx".}
type
  IGESGeomBSplineSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_BSplineSurface::get_type_name(@)",
                            header: "IGESGeom_BSplineSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_BSplineSurface::get_type_descriptor(@)",
    header: "IGESGeom_BSplineSurface.hxx".}
proc dynamicType*(this: IGESGeomBSplineSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_BSplineSurface.hxx".}

