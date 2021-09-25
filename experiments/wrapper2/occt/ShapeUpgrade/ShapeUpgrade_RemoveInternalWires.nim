##  Created on: 2006-08-10
##  Created by: Galina KULIKOVA
##  Copyright (c) 2006-2014 OPEN CASCADE SAS
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

##  resolve name collisions with X11 headers

# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_RemoveInternalWires"
discard "forward decl of ShapeUpgrade_RemoveInternalWires"
type
  HandleShapeUpgradeRemoveInternalWires* = Handle[ShapeUpgradeRemoveInternalWires]

## ! Removes all internal wires having area less than specified min area

type
  ShapeUpgradeRemoveInternalWires* {.importcpp: "ShapeUpgrade_RemoveInternalWires", header: "ShapeUpgrade_RemoveInternalWires.hxx",
                                    bycopy.} = object of ShapeUpgradeTool ## ! Creates empty
                                                                     ## constructor.
                                                                     ## ! Clear all sequences and temporary map;
                                                                     ## ! Removes internal wires having area of contour less than specified MinArea


proc constructShapeUpgradeRemoveInternalWires*(): ShapeUpgradeRemoveInternalWires {.
    constructor, importcpp: "ShapeUpgrade_RemoveInternalWires(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc constructShapeUpgradeRemoveInternalWires*(theShape: TopoDS_Shape): ShapeUpgradeRemoveInternalWires {.
    constructor, importcpp: "ShapeUpgrade_RemoveInternalWires(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc init*(this: var ShapeUpgradeRemoveInternalWires; theShape: TopoDS_Shape) {.
    importcpp: "Init", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc perform*(this: var ShapeUpgradeRemoveInternalWires): bool {.
    importcpp: "Perform", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc perform*(this: var ShapeUpgradeRemoveInternalWires;
             theSeqShapes: TopToolsSequenceOfShape): bool {.importcpp: "Perform",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc getResult*(this: ShapeUpgradeRemoveInternalWires): TopoDS_Shape {.noSideEffect,
    importcpp: "GetResult", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc minArea*(this: var ShapeUpgradeRemoveInternalWires): var float {.
    importcpp: "MinArea", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc removeFaceMode*(this: var ShapeUpgradeRemoveInternalWires): var bool {.
    importcpp: "RemoveFaceMode", header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc removedFaces*(this: ShapeUpgradeRemoveInternalWires): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "RemovedFaces",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc removedWires*(this: ShapeUpgradeRemoveInternalWires): TopToolsSequenceOfShape {.
    noSideEffect, importcpp: "RemovedWires",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc status*(this: ShapeUpgradeRemoveInternalWires; theStatus: ShapeExtendStatus): bool {.
    noSideEffect, importcpp: "Status",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
type
  ShapeUpgradeRemoveInternalWiresbaseType* = ShapeUpgradeTool

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_RemoveInternalWires::get_type_name(@)",
                            header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_RemoveInternalWires::get_type_descriptor(@)",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
proc dynamicType*(this: ShapeUpgradeRemoveInternalWires): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_RemoveInternalWires.hxx".}
