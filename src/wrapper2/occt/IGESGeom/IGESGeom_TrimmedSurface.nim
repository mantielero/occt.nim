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
  IGESGeom_HArray1OfCurveOnSurface, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESGeom_TrimmedSurface"
discard "forward decl of IGESGeom_TrimmedSurface"
type
  Handle_IGESGeom_TrimmedSurface* = handle[IGESGeom_TrimmedSurface]

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
  IGESGeom_TrimmedSurface* {.importcpp: "IGESGeom_TrimmedSurface",
                            header: "IGESGeom_TrimmedSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_TrimmedSurface*(): IGESGeom_TrimmedSurface {.constructor,
    importcpp: "IGESGeom_TrimmedSurface(@)", header: "IGESGeom_TrimmedSurface.hxx".}
proc Init*(this: var IGESGeom_TrimmedSurface; aSurface: handle[IGESData_IGESEntity];
          aFlag: Standard_Integer; anOuter: handle[IGESGeom_CurveOnSurface];
          allInners: handle[IGESGeom_HArray1OfCurveOnSurface]) {.
    importcpp: "Init", header: "IGESGeom_TrimmedSurface.hxx".}
proc Surface*(this: IGESGeom_TrimmedSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Surface", header: "IGESGeom_TrimmedSurface.hxx".}
proc HasOuterContour*(this: IGESGeom_TrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "HasOuterContour",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc OuterContour*(this: IGESGeom_TrimmedSurface): handle[IGESGeom_CurveOnSurface] {.
    noSideEffect, importcpp: "OuterContour", header: "IGESGeom_TrimmedSurface.hxx".}
proc OuterBoundaryType*(this: IGESGeom_TrimmedSurface): Standard_Integer {.
    noSideEffect, importcpp: "OuterBoundaryType",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc NbInnerContours*(this: IGESGeom_TrimmedSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbInnerContours",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc InnerContour*(this: IGESGeom_TrimmedSurface; Index: Standard_Integer): handle[
    IGESGeom_CurveOnSurface] {.noSideEffect, importcpp: "InnerContour",
                              header: "IGESGeom_TrimmedSurface.hxx".}
type
  IGESGeom_TrimmedSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_TrimmedSurface::get_type_name(@)",
                              header: "IGESGeom_TrimmedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_TrimmedSurface::get_type_descriptor(@)",
    header: "IGESGeom_TrimmedSurface.hxx".}
proc DynamicType*(this: IGESGeom_TrimmedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_TrimmedSurface.hxx".}