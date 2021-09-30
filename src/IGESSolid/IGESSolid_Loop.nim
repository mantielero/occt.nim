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

discard "forward decl of IGESBasic_HArray1OfHArray1OfInteger"
discard "forward decl of IGESBasic_HArray1OfHArray1OfIGESEntity"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_Loop"
type
  HandleC1C1* = Handle[IGESSolidLoop]

## ! defines Loop, Type <508> Form Number <1>
## ! in package IGESSolid
## ! A Loop entity specifies a bound of a face. It represents
## ! a connected collection of face boundaries, seams, and
## ! poles of a single face.
## !
## ! From IGES-5.3, a Loop can be free with Form Number 0,
## ! else it is a bound of a face (it is the default)

type
  IGESSolidLoop* {.importcpp: "IGESSolid_Loop", header: "IGESSolid_Loop.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidLoop*(): IGESSolidLoop {.constructor,
    importcpp: "IGESSolid_Loop(@)", header: "IGESSolid_Loop.hxx".}
proc init*(this: var IGESSolidLoop; types: Handle[TColStdHArray1OfInteger];
          edges: Handle[IGESDataHArray1OfIGESEntity];
          index: Handle[TColStdHArray1OfInteger];
          orient: Handle[TColStdHArray1OfInteger];
          nbParameterCurves: Handle[TColStdHArray1OfInteger];
          isoparametricFlags: Handle[IGESBasicHArray1OfHArray1OfInteger];
          curves: Handle[IGESBasicHArray1OfHArray1OfIGESEntity]) {.
    importcpp: "Init", header: "IGESSolid_Loop.hxx".}
proc isBound*(this: IGESSolidLoop): bool {.noSideEffect, importcpp: "IsBound",
                                       header: "IGESSolid_Loop.hxx".}
proc setBound*(this: var IGESSolidLoop; bound: bool) {.importcpp: "SetBound",
    header: "IGESSolid_Loop.hxx".}
proc nbEdges*(this: IGESSolidLoop): cint {.noSideEffect, importcpp: "NbEdges",
                                       header: "IGESSolid_Loop.hxx".}
proc edgeType*(this: IGESSolidLoop; index: cint): cint {.noSideEffect,
    importcpp: "EdgeType", header: "IGESSolid_Loop.hxx".}
proc edge*(this: IGESSolidLoop; index: cint): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Edge", header: "IGESSolid_Loop.hxx".}
proc orientation*(this: IGESSolidLoop; index: cint): bool {.noSideEffect,
    importcpp: "Orientation", header: "IGESSolid_Loop.hxx".}
proc nbParameterCurves*(this: IGESSolidLoop; index: cint): cint {.noSideEffect,
    importcpp: "NbParameterCurves", header: "IGESSolid_Loop.hxx".}
proc isIsoparametric*(this: IGESSolidLoop; edgeIndex: cint; curveIndex: cint): bool {.
    noSideEffect, importcpp: "IsIsoparametric", header: "IGESSolid_Loop.hxx".}
proc parametricCurve*(this: IGESSolidLoop; edgeIndex: cint; curveIndex: cint): Handle[
    IGESDataIGESEntity] {.noSideEffect, importcpp: "ParametricCurve",
                         header: "IGESSolid_Loop.hxx".}
proc listIndex*(this: IGESSolidLoop; num: cint): cint {.noSideEffect,
    importcpp: "ListIndex", header: "IGESSolid_Loop.hxx".}
type
  IGESSolidLoopbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Loop::get_type_name(@)",
                            header: "IGESSolid_Loop.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Loop::get_type_descriptor(@)",
    header: "IGESSolid_Loop.hxx".}
proc dynamicType*(this: IGESSolidLoop): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Loop.hxx".}

























