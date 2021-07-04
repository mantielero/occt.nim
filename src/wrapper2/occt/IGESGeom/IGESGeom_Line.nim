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
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESGeom_Line"
type
  Handle_IGESGeom_Line* = handle[IGESGeom_Line]

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
  IGESGeom_Line* {.importcpp: "IGESGeom_Line", header: "IGESGeom_Line.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESGeom_Line*(): IGESGeom_Line {.constructor,
    importcpp: "IGESGeom_Line(@)", header: "IGESGeom_Line.hxx".}
proc Init*(this: var IGESGeom_Line; aStart: gp_XYZ; anEnd: gp_XYZ) {.importcpp: "Init",
    header: "IGESGeom_Line.hxx".}
proc Infinite*(this: IGESGeom_Line): Standard_Integer {.noSideEffect,
    importcpp: "Infinite", header: "IGESGeom_Line.hxx".}
proc SetInfinite*(this: var IGESGeom_Line; status: Standard_Integer) {.
    importcpp: "SetInfinite", header: "IGESGeom_Line.hxx".}
proc StartPoint*(this: IGESGeom_Line): gp_Pnt {.noSideEffect,
    importcpp: "StartPoint", header: "IGESGeom_Line.hxx".}
proc TransformedStartPoint*(this: IGESGeom_Line): gp_Pnt {.noSideEffect,
    importcpp: "TransformedStartPoint", header: "IGESGeom_Line.hxx".}
proc EndPoint*(this: IGESGeom_Line): gp_Pnt {.noSideEffect, importcpp: "EndPoint",
    header: "IGESGeom_Line.hxx".}
proc TransformedEndPoint*(this: IGESGeom_Line): gp_Pnt {.noSideEffect,
    importcpp: "TransformedEndPoint", header: "IGESGeom_Line.hxx".}
type
  IGESGeom_Linebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESGeom_Line::get_type_name(@)",
                              header: "IGESGeom_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESGeom_Line::get_type_descriptor(@)",
    header: "IGESGeom_Line.hxx".}
proc DynamicType*(this: IGESGeom_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGeom_Line.hxx".}