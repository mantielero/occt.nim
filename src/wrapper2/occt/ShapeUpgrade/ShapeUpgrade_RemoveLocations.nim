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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_RemoveLocations"
discard "forward decl of ShapeUpgrade_RemoveLocations"
type
  HandleShapeUpgradeRemoveLocations* = Handle[ShapeUpgradeRemoveLocations]

## ! Removes all locations sub-shapes of specified shape

type
  ShapeUpgradeRemoveLocations* {.importcpp: "ShapeUpgrade_RemoveLocations",
                                header: "ShapeUpgrade_RemoveLocations.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Empy
                                                                                                            ## constructor


proc constructShapeUpgradeRemoveLocations*(): ShapeUpgradeRemoveLocations {.
    constructor, importcpp: "ShapeUpgrade_RemoveLocations(@)",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc remove*(this: var ShapeUpgradeRemoveLocations; theShape: TopoDS_Shape): StandardBoolean {.
    importcpp: "Remove", header: "ShapeUpgrade_RemoveLocations.hxx".}
proc getResult*(this: ShapeUpgradeRemoveLocations): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "ShapeUpgrade_RemoveLocations.hxx".}
proc setRemoveLevel*(this: var ShapeUpgradeRemoveLocations;
                    theLevel: TopAbsShapeEnum) {.importcpp: "SetRemoveLevel",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc removeLevel*(this: ShapeUpgradeRemoveLocations): TopAbsShapeEnum {.
    noSideEffect, importcpp: "RemoveLevel",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc modifiedShape*(this: ShapeUpgradeRemoveLocations; theInitShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
type
  ShapeUpgradeRemoveLocationsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_RemoveLocations::get_type_name(@)",
                            header: "ShapeUpgrade_RemoveLocations.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_RemoveLocations::get_type_descriptor(@)",
    header: "ShapeUpgrade_RemoveLocations.hxx".}
proc dynamicType*(this: ShapeUpgradeRemoveLocations): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_RemoveLocations.hxx".}

