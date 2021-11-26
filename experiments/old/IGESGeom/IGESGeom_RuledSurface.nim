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
discard "forward decl of IGESGeom_RuledSurface"
discard "forward decl of IGESGeom_RuledSurface"
type
  HandleC1C1* = Handle[IGESGeomRuledSurface]

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
  IGESGeomRuledSurface* {.importcpp: "IGESGeom_RuledSurface",
                         header: "IGESGeom_RuledSurface.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomRuledSurface*(): IGESGeomRuledSurface {.constructor,
    importcpp: "IGESGeom_RuledSurface(@)", header: "IGESGeom_RuledSurface.hxx".}
proc init*(this: var IGESGeomRuledSurface; aCurve: Handle[IGESDataIGESEntity];
          anotherCurve: Handle[IGESDataIGESEntity]; aDirFlag: cint; aDevFlag: cint) {.
    importcpp: "Init", header: "IGESGeom_RuledSurface.hxx".}
proc setRuledByParameter*(this: var IGESGeomRuledSurface; mode: bool) {.
    importcpp: "SetRuledByParameter", header: "IGESGeom_RuledSurface.hxx".}
proc isRuledByParameter*(this: IGESGeomRuledSurface): bool {.noSideEffect,
    importcpp: "IsRuledByParameter", header: "IGESGeom_RuledSurface.hxx".}
proc firstCurve*(this: IGESGeomRuledSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "FirstCurve", header: "IGESGeom_RuledSurface.hxx".}
proc secondCurve*(this: IGESGeomRuledSurface): Handle[IGESDataIGESEntity] {.
    noSideEffect, importcpp: "SecondCurve", header: "IGESGeom_RuledSurface.hxx".}
proc directionFlag*(this: IGESGeomRuledSurface): cint {.noSideEffect,
    importcpp: "DirectionFlag", header: "IGESGeom_RuledSurface.hxx".}
proc isDevelopable*(this: IGESGeomRuledSurface): bool {.noSideEffect,
    importcpp: "IsDevelopable", header: "IGESGeom_RuledSurface.hxx".}
type
  IGESGeomRuledSurfacebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_RuledSurface::get_type_name(@)",
                            header: "IGESGeom_RuledSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_RuledSurface::get_type_descriptor(@)",
    header: "IGESGeom_RuledSurface.hxx".}
proc dynamicType*(this: IGESGeomRuledSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_RuledSurface.hxx".}

























