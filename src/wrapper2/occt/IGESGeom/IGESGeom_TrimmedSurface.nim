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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_TrimmedSurface"
discard "forward decl of IGESGeom_TrimmedSurface"
type
  HandleIGESGeomTrimmedSurface* = Handle[IGESGeomTrimmedSurface]

## ! defines IGESTrimmedSurface, Type <144> Form <0>
## ! in package IGESGeom
## ! A simple closed curve  in Euclidean plane  divides the
## ! plane in to two disjoint, open connected components; one
## ! bounded, one unbounded. The bounded one is called the
## ! interior region to the curve. Unbounded component is called
## ! exterior region to the curve. The domain of the trimmed
## ! surface is defined as the interior of the outer boundaries
## ! and exterior of the inner boundaries and includes the
## ! boundary curves.

type
  IGESGeomTrimmedSurface* {.importcpp: "IGESGeom_TrimmedSurface",
                           header: "IGESGeom_TrimmedSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomTrimmedSurface*(): IGESGeomTrimmedSurface {.constructor,
    importcpp: "IGESGeom_TrimmedSurface(@)", header: "IGESGeom_TrimmedSurface.hxx".}
proc init*(this: var IGESGeomTrimmedSurface; aSurface: Handle[IGESDataIGESEntity];
          aFlag: StandardInteger; anOuter: Handle[IGESGeomCurveOnSurface];
          allInners: Handle[IGESGeomHArray1OfCurveOnSurface]) {.importcpp: "Init",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc surface*(this: IGESGeomTrimmedSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_TrimmedSurface.hxx".}
proc hasOuterContour*(this: IGESGeomTrimmedSurface): StandardBoolean {.noSideEffect,
    importcpp: "HasOuterContour", header: "IGESGeom_TrimmedSurface.hxx".}
proc outerContour*(this: IGESGeomTrimmedSurface): Handle[IGESGeomCurveOnSurface] {.
    noSideEffect, importcpp: "OuterContour", header: "IGESGeom_TrimmedSurface.hxx".}
proc outerBoundaryType*(this: IGESGeomTrimmedSurface): StandardInteger {.
    noSideEffect, importcpp: "OuterBoundaryType",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc nbInnerContours*(this: IGESGeomTrimmedSurface): StandardInteger {.noSideEffect,
    importcpp: "NbInnerContours", header: "IGESGeom_TrimmedSurface.hxx".}
proc innerContour*(this: IGESGeomTrimmedSurface; index: StandardInteger): Handle[
    IGESGeomCurveOnSurface] {.noSideEffect, importcpp: "InnerContour",
                             header: "IGESGeom_TrimmedSurface.hxx".}
type
  IGESGeomTrimmedSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_TrimmedSurface::get_type_name(@)",
                            header: "IGESGeom_TrimmedSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_TrimmedSurface::get_type_descriptor(@)",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc dynamicType*(this: IGESGeomTrimmedSurface): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_TrimmedSurface.hxx".}

