##  Created on: 1998-03-16
##  Created by: Pierre BARRAS
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../TColStd/TColStd_HSequenceOfReal, ../Standard/Standard_Integer,
  ../Standard/Standard_Transient, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of Geom_Surface"
discard "forward decl of ShapeExtend_CompositeSurface"
when defined(Status):
  discard
discard "forward decl of ShapeUpgrade_SplitSurface"
discard "forward decl of ShapeUpgrade_SplitSurface"
type
  Handle_ShapeUpgrade_SplitSurface* = handle[ShapeUpgrade_SplitSurface]

## ! Splits a Surface with a criterion.

type
  ShapeUpgrade_SplitSurface* {.importcpp: "ShapeUpgrade_SplitSurface",
                              header: "ShapeUpgrade_SplitSurface.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Empty
                                                                                                        ## constructor.


proc constructShapeUpgrade_SplitSurface*(): ShapeUpgrade_SplitSurface {.
    constructor, importcpp: "ShapeUpgrade_SplitSurface(@)",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc Init*(this: var ShapeUpgrade_SplitSurface; S: handle[Geom_Surface]) {.
    importcpp: "Init", header: "ShapeUpgrade_SplitSurface.hxx".}
proc Init*(this: var ShapeUpgrade_SplitSurface; S: handle[Geom_Surface];
          UFirst: Standard_Real; ULast: Standard_Real; VFirst: Standard_Real;
          VLast: Standard_Real) {.importcpp: "Init",
                                header: "ShapeUpgrade_SplitSurface.hxx".}
proc SetUSplitValues*(this: var ShapeUpgrade_SplitSurface;
                     UValues: handle[TColStd_HSequenceOfReal]) {.
    importcpp: "SetUSplitValues", header: "ShapeUpgrade_SplitSurface.hxx".}
proc SetVSplitValues*(this: var ShapeUpgrade_SplitSurface;
                     VValues: handle[TColStd_HSequenceOfReal]) {.
    importcpp: "SetVSplitValues", header: "ShapeUpgrade_SplitSurface.hxx".}
proc Build*(this: var ShapeUpgrade_SplitSurface; Segment: Standard_Boolean) {.
    importcpp: "Build", header: "ShapeUpgrade_SplitSurface.hxx".}
proc Compute*(this: var ShapeUpgrade_SplitSurface;
             Segment: Standard_Boolean = Standard_True) {.importcpp: "Compute",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc Perform*(this: var ShapeUpgrade_SplitSurface;
             Segment: Standard_Boolean = Standard_True) {.importcpp: "Perform",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc USplitValues*(this: ShapeUpgrade_SplitSurface): handle[TColStd_HSequenceOfReal] {.
    noSideEffect, importcpp: "USplitValues",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc VSplitValues*(this: ShapeUpgrade_SplitSurface): handle[TColStd_HSequenceOfReal] {.
    noSideEffect, importcpp: "VSplitValues",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc Status*(this: ShapeUpgrade_SplitSurface; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_SplitSurface.hxx".}
proc ResSurfaces*(this: ShapeUpgrade_SplitSurface): handle[
    ShapeExtend_CompositeSurface] {.noSideEffect, importcpp: "ResSurfaces",
                                   header: "ShapeUpgrade_SplitSurface.hxx".}
type
  ShapeUpgrade_SplitSurfacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_SplitSurface::get_type_name(@)",
                              header: "ShapeUpgrade_SplitSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_SplitSurface::get_type_descriptor(@)",
    header: "ShapeUpgrade_SplitSurface.hxx".}
proc DynamicType*(this: ShapeUpgrade_SplitSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_SplitSurface.hxx".}