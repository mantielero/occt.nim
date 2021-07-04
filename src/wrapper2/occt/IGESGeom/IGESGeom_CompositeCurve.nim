##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen (Kiran)
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
  ../IGESData/IGESData_HArray1OfIGESEntity, ../IGESData/IGESData_IGESEntity,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESGeom_CompositeCurve"
type
  Handle_IGESGeom_CompositeCurve* = handle[IGESGeom_CompositeCurve]

## ! defines IGESCompositeCurve, Type <102> Form <0>
## ! in package IGESGeom
## ! A composite curve is defined as an ordered list of entities
## ! consisting of a point, connect point and parametrised curve
## ! entities (excluding the CompositeCurve entity).

type
  IGESGeom_CompositeCurve* {.importcpp: "IGESGeom_CompositeCurve",
                            header: "IGESGeom_CompositeCurve.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_CompositeCurve*(): IGESGeom_CompositeCurve {.constructor,
    importcpp: "IGESGeom_CompositeCurve(@)", header: "IGESGeom_CompositeCurve.hxx".}
proc Init*(this: var IGESGeom_CompositeCurve;
          allEntities: handle[IGESData_HArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESGeom_CompositeCurve.hxx".}
proc NbCurves*(this: IGESGeom_CompositeCurve): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "IGESGeom_CompositeCurve.hxx".}
proc Curve*(this: IGESGeom_CompositeCurve; Index: Standard_Integer): handle[
    IGESData_IGESEntity] {.noSideEffect, importcpp: "Curve",
                          header: "IGESGeom_CompositeCurve.hxx".}
type
  IGESGeom_CompositeCurvebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_CompositeCurve::get_type_name(@)",
                              header: "IGESGeom_CompositeCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_CompositeCurve::get_type_descriptor(@)",
    header: "IGESGeom_CompositeCurve.hxx".}
proc DynamicType*(this: IGESGeom_CompositeCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_CompositeCurve.hxx".}