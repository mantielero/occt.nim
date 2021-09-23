##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( TCD )
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
  ../Standard/Standard_Real, ../gp/gp_XYZ, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of gp_XYZ"
discard "forward decl of gp_Vec"
discard "forward decl of IGESGeom_OffsetCurve"
discard "forward decl of IGESGeom_OffsetCurve"
type
  Handle_IGESGeom_OffsetCurve* = handle[IGESGeom_OffsetCurve]

## ! defines IGESOffsetCurve, Type <130> Form <0>
## ! in package IGESGeom
## ! An OffsetCurve entity contains the data necessary to
## ! determine the offset of a given curve C. This entity
## ! points to the base curve to be offset and contains
## ! offset distance and other pertinent information.

type
  IGESGeom_OffsetCurve* {.importcpp: "IGESGeom_OffsetCurve",
                         header: "IGESGeom_OffsetCurve.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_OffsetCurve*(): IGESGeom_OffsetCurve {.constructor,
    importcpp: "IGESGeom_OffsetCurve(@)", header: "IGESGeom_OffsetCurve.hxx".}
proc Init*(this: var IGESGeom_OffsetCurve; aBaseCurve: handle[IGESData_IGESEntity];
          anOffsetType: Standard_Integer; aFunction: handle[IGESData_IGESEntity];
          aFunctionCoord: Standard_Integer; aTaperedOffsetType: Standard_Integer;
          offDistance1: Standard_Real; arcLength1: Standard_Real;
          offDistance2: Standard_Real; arcLength2: Standard_Real;
          aNormalVec: gp_XYZ; anOffsetParam: Standard_Real;
          anotherOffsetParam: Standard_Real) {.importcpp: "Init",
    header: "IGESGeom_OffsetCurve.hxx".}
proc BaseCurve*(this: IGESGeom_OffsetCurve): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "BaseCurve", header: "IGESGeom_OffsetCurve.hxx".}
proc OffsetType*(this: IGESGeom_OffsetCurve): Standard_Integer {.noSideEffect,
    importcpp: "OffsetType", header: "IGESGeom_OffsetCurve.hxx".}
proc Function*(this: IGESGeom_OffsetCurve): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "Function", header: "IGESGeom_OffsetCurve.hxx".}
proc HasFunction*(this: IGESGeom_OffsetCurve): Standard_Boolean {.noSideEffect,
    importcpp: "HasFunction", header: "IGESGeom_OffsetCurve.hxx".}
proc FunctionParameter*(this: IGESGeom_OffsetCurve): Standard_Integer {.
    noSideEffect, importcpp: "FunctionParameter",
    header: "IGESGeom_OffsetCurve.hxx".}
proc TaperedOffsetType*(this: IGESGeom_OffsetCurve): Standard_Integer {.
    noSideEffect, importcpp: "TaperedOffsetType",
    header: "IGESGeom_OffsetCurve.hxx".}
proc FirstOffsetDistance*(this: IGESGeom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "FirstOffsetDistance", header: "IGESGeom_OffsetCurve.hxx".}
proc ArcLength1*(this: IGESGeom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "ArcLength1", header: "IGESGeom_OffsetCurve.hxx".}
proc SecondOffsetDistance*(this: IGESGeom_OffsetCurve): Standard_Real {.
    noSideEffect, importcpp: "SecondOffsetDistance",
    header: "IGESGeom_OffsetCurve.hxx".}
proc ArcLength2*(this: IGESGeom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "ArcLength2", header: "IGESGeom_OffsetCurve.hxx".}
proc NormalVector*(this: IGESGeom_OffsetCurve): gp_Vec {.noSideEffect,
    importcpp: "NormalVector", header: "IGESGeom_OffsetCurve.hxx".}
proc TransformedNormalVector*(this: IGESGeom_OffsetCurve): gp_Vec {.noSideEffect,
    importcpp: "TransformedNormalVector", header: "IGESGeom_OffsetCurve.hxx".}
proc Parameters*(this: IGESGeom_OffsetCurve; StartParam: var Standard_Real;
                EndParam: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IGESGeom_OffsetCurve.hxx".}
proc StartParameter*(this: IGESGeom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "StartParameter", header: "IGESGeom_OffsetCurve.hxx".}
proc EndParameter*(this: IGESGeom_OffsetCurve): Standard_Real {.noSideEffect,
    importcpp: "EndParameter", header: "IGESGeom_OffsetCurve.hxx".}
type
  IGESGeom_OffsetCurvebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_OffsetCurve::get_type_name(@)",
                              header: "IGESGeom_OffsetCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_OffsetCurve::get_type_descriptor(@)",
    header: "IGESGeom_OffsetCurve.hxx".}
proc DynamicType*(this: IGESGeom_OffsetCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_OffsetCurve.hxx".}