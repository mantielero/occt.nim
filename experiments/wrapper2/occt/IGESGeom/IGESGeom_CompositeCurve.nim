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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESGeom_CompositeCurve"
type
  HandleIGESGeomCompositeCurve* = Handle[IGESGeomCompositeCurve]

## ! defines IGESCompositeCurve, Type <102> Form <0>
## ! in package IGESGeom
## ! A composite curve is defined as an ordered list of entities
## ! consisting of a point, connect point and parametrised curve
## ! entities (excluding the CompositeCurve entity).

type
  IGESGeomCompositeCurve* {.importcpp: "IGESGeom_CompositeCurve",
                           header: "IGESGeom_CompositeCurve.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomCompositeCurve*(): IGESGeomCompositeCurve {.constructor,
    importcpp: "IGESGeom_CompositeCurve(@)", header: "IGESGeom_CompositeCurve.hxx".}
proc init*(this: var IGESGeomCompositeCurve;
          allEntities: Handle[IGESDataHArray1OfIGESEntity]) {.importcpp: "Init",
    header: "IGESGeom_CompositeCurve.hxx".}
proc nbCurves*(this: IGESGeomCompositeCurve): int {.noSideEffect,
    importcpp: "NbCurves", header: "IGESGeom_CompositeCurve.hxx".}
proc curve*(this: IGESGeomCompositeCurve; index: int): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "Curve", header: "IGESGeom_CompositeCurve.hxx".}
type
  IGESGeomCompositeCurvebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_CompositeCurve::get_type_name(@)",
                            header: "IGESGeom_CompositeCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_CompositeCurve::get_type_descriptor(@)",
    header: "IGESGeom_CompositeCurve.hxx".}
proc dynamicType*(this: IGESGeomCompositeCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_CompositeCurve.hxx".}
