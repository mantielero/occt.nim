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

import
  Select3D_SensitiveSet

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


proc constructSelect3D_SensitiveWire*(theOwnerId: handle[SelectMgr_EntityOwner]): Select3D_SensitiveWire {.
    constructor, importcpp: "Select3D_SensitiveWire(@)",
    header: "Select3D_SensitiveWire.hxx".}
proc Add*(this: var Select3D_SensitiveWire;
         theSensitive: handle[Select3D_SensitiveEntity]) {.importcpp: "Add",
    header: "Select3D_SensitiveWire.hxx".}
proc NbSubElements*(this: Select3D_SensitiveWire): Standard_Integer {.noSideEffect,
    importcpp: "NbSubElements", header: "Select3D_SensitiveWire.hxx".}
proc GetConnected*(this: var Select3D_SensitiveWire): handle[
    Select3D_SensitiveEntity] {.importcpp: "GetConnected",
                               header: "Select3D_SensitiveWire.hxx".}
proc GetEdges*(this: var Select3D_SensitiveWire): NCollection_Vector[
    handle[Select3D_SensitiveEntity]] {.importcpp: "GetEdges",
                                       header: "Select3D_SensitiveWire.hxx".}
proc Set*(this: var Select3D_SensitiveWire;
         theOwnerId: handle[SelectMgr_EntityOwner]) {.importcpp: "Set",
    header: "Select3D_SensitiveWire.hxx".}
proc GetLastDetected*(this: Select3D_SensitiveWire): handle[
    Select3D_SensitiveEntity] {.noSideEffect, importcpp: "GetLastDetected",
                               header: "Select3D_SensitiveWire.hxx".}
proc BoundingBox*(this: var Select3D_SensitiveWire): Select3D_BndBox3d {.
    importcpp: "BoundingBox", header: "Select3D_SensitiveWire.hxx".}
proc CenterOfGeometry*(this: Select3D_SensitiveWire): gp_Pnt {.noSideEffect,
    importcpp: "CenterOfGeometry", header: "Select3D_SensitiveWire.hxx".}
proc Size*(this: Select3D_SensitiveWire): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Select3D_SensitiveWire.hxx".}
proc Box*(this: Select3D_SensitiveWire; theIdx: Standard_Integer): Select3D_BndBox3d {.
    noSideEffect, importcpp: "Box", header: "Select3D_SensitiveWire.hxx".}
proc Center*(this: Select3D_SensitiveWire; theIdx: Standard_Integer;
            theAxis: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Center", header: "Select3D_SensitiveWire.hxx".}
proc Swap*(this: var Select3D_SensitiveWire; theIdx1: Standard_Integer;
          theIdx2: Standard_Integer) {.importcpp: "Swap",
                                     header: "Select3D_SensitiveWire.hxx".}
proc DumpJson*(this: Select3D_SensitiveWire; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Select3D_SensitiveWire.hxx".}
type
  Select3D_SensitiveWirebase_type* = Select3D_SensitiveSet

proc get_type_name*(): cstring {.importcpp: "Select3D_SensitiveWire::get_type_name(@)",
                              header: "Select3D_SensitiveWire.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Select3D_SensitiveWire::get_type_descriptor(@)",
    header: "Select3D_SensitiveWire.hxx".}
proc DynamicType*(this: Select3D_SensitiveWire): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Select3D_SensitiveWire.hxx".}
discard "forward decl of Select3D_SensitiveWire"
type
  Handle_Select3D_SensitiveWire* = handle[Select3D_SensitiveWire]
