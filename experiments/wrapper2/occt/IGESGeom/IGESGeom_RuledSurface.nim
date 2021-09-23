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
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of IGESGeom_RuledSurface"
discard "forward decl of IGESGeom_RuledSurface"
type
  Handle_IGESGeom_RuledSurface* = handle[IGESGeom_RuledSurface]

## ! defines IGESRuledSurface, Type <118> Form <0-1>
## ! in package IGESGeom
## ! A ruled surface is formed by moving a line connecting points
## ! of equal relative arc length or equal relative parametric
## ! value on two parametric curves from a start point to a
## ! terminate point on the curves. The parametric curves may be
## ! points, lines, circles, conics, rational B-splines,
## ! parametric splines or any parametric curve defined in
## ! the IGES specification.

type
  IGESGeom_RuledSurface* {.importcpp: "IGESGeom_RuledSurface",
                          header: "IGESGeom_RuledSurface.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_RuledSurface*(): IGESGeom_RuledSurface {.constructor,
    importcpp: "IGESGeom_RuledSurface(@)", header: "IGESGeom_RuledSurface.hxx".}
proc Init*(this: var IGESGeom_RuledSurface; aCurve: handle[IGESData_IGESEntity];
          anotherCurve: handle[IGESData_IGESEntity]; aDirFlag: Standard_Integer;
          aDevFlag: Standard_Integer) {.importcpp: "Init",
                                      header: "IGESGeom_RuledSurface.hxx".}
proc SetRuledByParameter*(this: var IGESGeom_RuledSurface; mode: Standard_Boolean) {.
    importcpp: "SetRuledByParameter", header: "IGESGeom_RuledSurface.hxx".}
proc IsRuledByParameter*(this: IGESGeom_RuledSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsRuledByParameter",
    header: "IGESGeom_RuledSurface.hxx".}
proc FirstCurve*(this: IGESGeom_RuledSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "FirstCurve", header: "IGESGeom_RuledSurface.hxx".}
proc SecondCurve*(this: IGESGeom_RuledSurface): handle[IGESData_IGESEntity] {.
    noSideEffect, importcpp: "SecondCurve", header: "IGESGeom_RuledSurface.hxx".}
proc DirectionFlag*(this: IGESGeom_RuledSurface): Standard_Integer {.noSideEffect,
    importcpp: "DirectionFlag", header: "IGESGeom_RuledSurface.hxx".}
proc IsDevelopable*(this: IGESGeom_RuledSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsDevelopable", header: "IGESGeom_RuledSurface.hxx".}
type
  IGESGeom_RuledSurfacebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_RuledSurface::get_type_name(@)",
                              header: "IGESGeom_RuledSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_RuledSurface::get_type_descriptor(@)",
    header: "IGESGeom_RuledSurface.hxx".}
proc DynamicType*(this: IGESGeom_RuledSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGeom_RuledSurface.hxx".}