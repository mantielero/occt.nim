##  Created on: 2013-07-15
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Sequence, Graphic3d_ClipPlane

## ! Class defines a Clipping Volume as a logical OR (disjunction) operation between Graphic3d_ClipPlane in sequence.
## ! Each Graphic3d_ClipPlane represents either a single Plane clipping a halfspace (direction is specified by normal),
## ! or a sub-chain of planes defining a logical AND (conjunction) operation.
## ! Therefore, this collection allows defining a Clipping Volume through the limited set of Boolean operations between clipping Planes.
## !
## ! The Clipping Volume can be assigned either to entire View or to a specific Object;
## ! in the latter case property ToOverrideGlobal() will specify if Object planes should override (suppress) globally defined ones
## ! or extend their definition through logical OR (disjunction) operation.
## !
## ! Note that defining (many) planes will lead to performance degradation, and Graphics Driver may limit
## ! the overall number of simultaneously active clipping planes - but at least 6 planes should be supported on all configurations.

type
  Graphic3d_SequenceOfHClipPlane* {.importcpp: "Graphic3d_SequenceOfHClipPlane", header: "Graphic3d_SequenceOfHClipPlane.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Iterator through clipping planes.
                                                                      ## ! Empty
                                                                      ## constructor.

  Graphic3d_SequenceOfHClipPlanebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_SequenceOfHClipPlane::get_type_name(@)",
                              header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_SequenceOfHClipPlane::get_type_descriptor(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc DynamicType*(this: Graphic3d_SequenceOfHClipPlane): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
type
  Graphic3d_SequenceOfHClipPlaneIterator* {.
      importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator",
      header: "Graphic3d_SequenceOfHClipPlane.hxx", bycopy.} = object of Graphic3d_SequenceOfHClipPlaneIterator[
      handle[Graphic3d_ClipPlane]]


proc constructGraphic3d_SequenceOfHClipPlaneIterator*(): Graphic3d_SequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3d_SequenceOfHClipPlaneIterator*(
    thePlanes: Graphic3d_SequenceOfHClipPlane): Graphic3d_SequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3d_SequenceOfHClipPlaneIterator*(
    thePlanes: handle[Graphic3d_SequenceOfHClipPlane]): Graphic3d_SequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Init*(this: var Graphic3d_SequenceOfHClipPlaneIterator;
          thePlanes: Graphic3d_SequenceOfHClipPlane) {.importcpp: "Init",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Init*(this: var Graphic3d_SequenceOfHClipPlaneIterator;
          thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.importcpp: "Init",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3d_SequenceOfHClipPlane*(): Graphic3d_SequenceOfHClipPlane {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc ToOverrideGlobal*(this: Graphic3d_SequenceOfHClipPlane): Standard_Boolean {.
    noSideEffect, importcpp: "ToOverrideGlobal",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc SetOverrideGlobal*(this: var Graphic3d_SequenceOfHClipPlane;
                       theToOverride: Standard_Boolean) {.
    importcpp: "SetOverrideGlobal", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc IsEmpty*(this: Graphic3d_SequenceOfHClipPlane): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Size*(this: Graphic3d_SequenceOfHClipPlane): Standard_Integer {.noSideEffect,
    importcpp: "Size", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Append*(this: var Graphic3d_SequenceOfHClipPlane;
            theItem: handle[Graphic3d_ClipPlane]): bool {.importcpp: "Append",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Remove*(this: var Graphic3d_SequenceOfHClipPlane;
            theItem: handle[Graphic3d_ClipPlane]): bool {.importcpp: "Remove",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Remove*(this: var Graphic3d_SequenceOfHClipPlane;
            theItem: var Graphic3d_SequenceOfHClipPlaneIterator) {.
    importcpp: "Remove", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc Clear*(this: var Graphic3d_SequenceOfHClipPlane) {.importcpp: "Clear",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc First*(this: Graphic3d_SequenceOfHClipPlane): handle[Graphic3d_ClipPlane] {.
    noSideEffect, importcpp: "First", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc DumpJson*(this: Graphic3d_SequenceOfHClipPlane;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
discard "forward decl of Graphic3d_SequenceOfHClipPlane"
type
  Handle_Graphic3d_SequenceOfHClipPlane* = handle[Graphic3d_SequenceOfHClipPlane]
