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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESGeom_Line"
type
  HandleIGESGeomLine* = Handle[IGESGeomLine]

## ! defines IGESLine, Type <110> Form <0>
## ! in package IGESGeom
## ! A line is a bounded, connected portion of a parent straight
## ! line which consists of more than one point. A line is
## ! defined by its end points.
## !
## ! From IGES-5.3, two other Forms are admitted (same params) :
## ! 0 remains for standard limited line (the default)
## ! 1 for semi-infinite line (End is just a passing point)
## ! 2 for full infinite Line (both Start and End are abitrary)

type
  IGESGeomLine* {.importcpp: "IGESGeom_Line", header: "IGESGeom_Line.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESGeomLine*(): IGESGeomLine {.constructor,
    importcpp: "IGESGeom_Line(@)", header: "IGESGeom_Line.hxx".}
proc init*(this: var IGESGeomLine; aStart: GpXYZ; anEnd: GpXYZ) {.importcpp: "Init",
    header: "IGESGeom_Line.hxx".}
proc infinite*(this: IGESGeomLine): StandardInteger {.noSideEffect,
    importcpp: "Infinite", header: "IGESGeom_Line.hxx".}
proc setInfinite*(this: var IGESGeomLine; status: StandardInteger) {.
    importcpp: "SetInfinite", header: "IGESGeom_Line.hxx".}
proc startPoint*(this: IGESGeomLine): GpPnt {.noSideEffect, importcpp: "StartPoint",
    header: "IGESGeom_Line.hxx".}
proc transformedStartPoint*(this: IGESGeomLine): GpPnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_Line.hxx".}
proc endPoint*(this: IGESGeomLine): GpPnt {.noSideEffect, importcpp: "EndPoint",
                                        header: "IGESGeom_Line.hxx".}
proc transformedEndPoint*(this: IGESGeomLine): GpPnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_Line.hxx".}
type
  IGESGeomLinebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESGeom_Line::get_type_name(@)",
                            header: "IGESGeom_Line.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGeom_Line::get_type_descriptor(@)",
    header: "IGESGeom_Line.hxx".}
proc dynamicType*(this: IGESGeomLine): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Line.hxx".}

