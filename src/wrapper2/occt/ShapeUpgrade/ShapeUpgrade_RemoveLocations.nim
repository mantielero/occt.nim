##  Created on: 2002-11-13
##  Created by: Galina KULIKOVA
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopAbs/TopAbs_ShapeEnum,
  ../TopoDS/TopoDS_Shape, ../TopTools/TopTools_DataMapOfShapeShape,
  ../Standard/Standard_Transient, ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_RemoveLocations"
discard "forward decl of ShapeUpgrade_RemoveLocations"
type
  Handle_ShapeUpgrade_RemoveLocations* = handle[ShapeUpgrade_RemoveLocations]

## ! Removes all locations sub-shapes of specified shape

type
  ShapeUpgrade_RemoveLocations* {.importcpp: "ShapeUpgrade_RemoveLocations",
                                 header: "ShapeUpgrade_RemoveLocations.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Empy constructor


proc constructShapeUpgrade_RemoveLocations*(): ShapeUpgrade_RemoveLocations {.
    constructor, importcpp: "ShapeUpgrade_RemoveLocations(@)",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc Remove*(this: var ShapeUpgrade_RemoveLocations; theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Remove", header: "ShapeUpgrade_RemoveLocations.hxx".}
proc GetResult*(this: ShapeUpgrade_RemoveLocations): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "ShapeUpgrade_RemoveLocations.hxx".}
proc SetRemoveLevel*(this: var ShapeUpgrade_RemoveLocations;
                    theLevel: TopAbs_ShapeEnum) {.importcpp: "SetRemoveLevel",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc RemoveLevel*(this: ShapeUpgrade_RemoveLocations): TopAbs_ShapeEnum {.
    noSideEffect, importcpp: "RemoveLevel",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc ModifiedShape*(this: ShapeUpgrade_RemoveLocations; theInitShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
type
  ShapeUpgrade_RemoveLocationsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_RemoveLocations::get_type_name(@)",
                              header: "ShapeUpgrade_RemoveLocations.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_RemoveLocations::get_type_descriptor(@)",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc DynamicType*(this: ShapeUpgrade_RemoveLocations): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_RemoveLocations.hxx".}