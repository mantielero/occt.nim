##  Created on: 1996-10-17
##  Created by: Odile OLIVIER
##  Copyright (c) 1996-1999 Matra Datavision
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

## ! A framework to define selection of a wire owner by an
## ! elastic wire band.

type
  Select3D_SensitiveWire* {.importcpp: "Select3D_SensitiveWire",
                           header: "Select3D_SensitiveWire.hxx", bycopy.} = object of Select3D_SensitiveSet ##
                                                                                                     ## !
                                                                                                     ## Constructs
                                                                                                     ## a
                                                                                                     ## sensitive
                                                                                                     ## wire
                                                                                                     ## object
                                                                                                     ## defined
                                                                                                     ## by
                                                                                                     ## the
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## owner
                                                                                                     ## theOwnerId
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Checks
                                                                                                     ## whether
                                                                                                     ## the
                                                                                                     ## entity
                                                                                                     ## with
                                                                                                     ## index
                                                                                                     ## theIdx
                                                                                                     ## overlaps
                                                                                                     ## the
                                                                                                     ## current
                                                                                                     ## selecting
                                                                                                     ## volume
    ## !< Vector of sub-entities
    ## !< Indexes of entities for BVH build
    ## !< Center of the whole wire
    ## !< Bounding box of the whole wire


proc constructSelect3D_SensitiveWire*(theOwnerId: Handle[SelectMgrEntityOwner]): Select3D_SensitiveWire {.
    constructor, importcpp: "Select3D_SensitiveWire(@)",
    header: "Select3D_SensitiveWire.hxx".}
proc add*(this: var Select3D_SensitiveWire;
         theSensitive: Handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "Select3D_SensitiveWire.hxx".}
proc nbSubElements*(this: Select3D_SensitiveWire): int {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveWire.hxx".}
proc getConnected*(this: var Select3D_SensitiveWire): Handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveWire.hxx".}
proc getEdges*(this: var Select3D_SensitiveWire): NCollectionVector[
    Handle[Select3D_SensitiveEntity]] {.importcpp: "GetEdges",
                                       header: "Select3D_SensitiveWire.hxx".}
proc set*(this: var Select3D_SensitiveWire; theOwnerId: Handle[SelectMgrEntityOwner]) {.
    importcpp: "Set", header: "Select3D_SensitiveWire.hxx".}
proc getLastDetected*(this: Select3D_SensitiveWire): Handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "GetLastDetected",
                               header: "Select3D_SensitiveWire.hxx".}
proc boundingBox*(this: var Select3D_SensitiveWire): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveWire.hxx".}
proc centerOfGeometry*(this: Select3D_SensitiveWire): Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveWire.hxx".}
proc size*(this: Select3D_SensitiveWire): int {.noSideEffect, importcpp: "Size",
    header: "Select3D_SensitiveWire.hxx".}
proc box*(this: Select3D_SensitiveWire; theIdx: int): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveWire.hxx".}
proc center*(this: Select3D_SensitiveWire; theIdx: int; theAxis: int): float {.
    noSideEffect, importcpp: "Center", header: "Select3D_SensitiveWire.hxx".}
proc swap*(this: var Select3D_SensitiveWire; theIdx1: int; theIdx2: int) {.
    importcpp: "Swap", header: "Select3D_SensitiveWire.hxx".}
proc dumpJson*(this: Select3D_SensitiveWire; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Select3D_SensitiveWire.hxx".}
type
  Select3D_SensitiveWirebaseType* = Select3D_SensitiveSet

proc getTypeName*(): cstring {.importcpp: "Select3D_SensitiveWire::get_type_name(@)",
                            header: "Select3D_SensitiveWire.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Select3D_SensitiveWire::get_type_descriptor(@)",
    header: "Select3D_SensitiveWire.hxx".}
proc dynamicType*(this: Select3D_SensitiveWire): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveWire.hxx".}
discard "forward decl of Select3D_SensitiveWire"
type
  HandleSelect3D_SensitiveWire* = Handle[Select3D_SensitiveWire]

