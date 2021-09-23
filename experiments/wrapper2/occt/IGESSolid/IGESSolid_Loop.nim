##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HArray1OfInteger, ../IGESData/IGESData_HArray1OfIGESEntity,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_Loop"
type
  Handle_IGESSolid_Loop* = handle[IGESSolid_Loop]

## ! defines Loop, Type <508> Form Number <1>
## ! in package IGESSolid
## ! A Loop entity specifies a bound of a face. It represents
## ! a connected collection of face boundaries, seams, and
## ! poles of a single face.
## !
## ! From IGES-5.3, a Loop can be free with Form Number 0,
## ! else it is a bound of a face (it is the default)

type
  IGESSolid_Loop* {.importcpp: "IGESSolid_Loop", header: "IGESSolid_Loop.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Loop*(): IGESSolid_Loop {.constructor,
    importcpp: "IGESSolid_Loop(@)", header: "IGESSolid_Loop.hxx".}
proc Init*(this: var IGESSolid_Loop; types: handle[TColStd_HArray1OfInteger];
          edges: handle[IGESData_HArray1OfIGESEntity];
          index: handle[TColStd_HArray1OfInteger];
          orient: handle[TColStd_HArray1OfInteger];
          nbParameterCurves: handle[TColStd_HArray1OfInteger];
          isoparametricFlags: handle[IGESBasic_HArray1OfHArray1OfInteger];
          curves: handle[IGESBasic_HArray1OfHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESSolid_Loop.hxx".}
proc IsBound*(this: IGESSolid_Loop): Standard_Boolean {.noSideEffect,
    importcpp: "IsBound", header: "IGESSolid_Loop.hxx".}
proc SetBound*(this: var IGESSolid_Loop; bound: Standard_Boolean) {.
    importcpp: "SetBound", header: "IGESSolid_Loop.hxx".}
proc NbEdges*(this: IGESSolid_Loop): Standard_Integer {.noSideEffect,
    importcpp: "NbEdges", header: "IGESSolid_Loop.hxx".}
proc EdgeType*(this: IGESSolid_Loop; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "EdgeType", header: "IGESSolid_Loop.hxx".}
proc Edge*(this: IGESSolid_Loop; Index: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Edge", header: "IGESSolid_Loop.hxx".}
proc Orientation*(this: IGESSolid_Loop; Index: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Orientation", header: "IGESSolid_Loop.hxx".}
proc NbParameterCurves*(this: IGESSolid_Loop; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbParameterCurves", header: "IGESSolid_Loop.hxx".}
proc IsIsoparametric*(this: IGESSolid_Loop; EdgeIndex: Standard_Integer;
                     CurveIndex: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsIsoparametric", header: "IGESSolid_Loop.hxx".}
proc ParametricCurve*(this: IGESSolid_Loop; EdgeIndex: Standard_Integer;
                     CurveIndex: Standard_Integer): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "ParametricCurve", header: "IGESSolid_Loop.hxx".}
proc ListIndex*(this: IGESSolid_Loop; num: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "ListIndex", header: "IGESSolid_Loop.hxx".}
type
  IGESSolid_Loopbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Loop::get_type_name(@)",
                              header: "IGESSolid_Loop.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Loop::get_type_descriptor(@)",
    header: "IGESSolid_Loop.hxx".}
proc DynamicType*(this: IGESSolid_Loop): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Loop.hxx".}