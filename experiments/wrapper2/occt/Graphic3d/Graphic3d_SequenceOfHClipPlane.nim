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
  Graphic3dSequenceOfHClipPlane* {.importcpp: "Graphic3d_SequenceOfHClipPlane",
                                  header: "Graphic3d_SequenceOfHClipPlane.hxx",
                                  bycopy.} = object of StandardTransient ## ! Iterator through clipping planes.
                                                                    ## ! Empty constructor.

  Graphic3dSequenceOfHClipPlanebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_SequenceOfHClipPlane::get_type_name(@)",
                            header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_SequenceOfHClipPlane::get_type_descriptor(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc dynamicType*(this: Graphic3dSequenceOfHClipPlane): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
type
  Graphic3dSequenceOfHClipPlaneIterator* {.
      importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator",
      header: "Graphic3d_SequenceOfHClipPlane.hxx", bycopy.} = object of Graphic3dSequenceOfHClipPlaneIterator[
      Handle[Graphic3dClipPlane]]


proc constructGraphic3dSequenceOfHClipPlaneIterator*(): Graphic3dSequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3dSequenceOfHClipPlaneIterator*(
    thePlanes: Graphic3dSequenceOfHClipPlane): Graphic3dSequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3dSequenceOfHClipPlaneIterator*(
    thePlanes: Handle[Graphic3dSequenceOfHClipPlane]): Graphic3dSequenceOfHClipPlaneIterator {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc init*(this: var Graphic3dSequenceOfHClipPlaneIterator;
          thePlanes: Graphic3dSequenceOfHClipPlane) {.importcpp: "Init",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc init*(this: var Graphic3dSequenceOfHClipPlaneIterator;
          thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.importcpp: "Init",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc constructGraphic3dSequenceOfHClipPlane*(): Graphic3dSequenceOfHClipPlane {.
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc toOverrideGlobal*(this: Graphic3dSequenceOfHClipPlane): bool {.noSideEffect,
    importcpp: "ToOverrideGlobal", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc setOverrideGlobal*(this: var Graphic3dSequenceOfHClipPlane; theToOverride: bool) {.
    importcpp: "SetOverrideGlobal", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc isEmpty*(this: Graphic3dSequenceOfHClipPlane): bool {.noSideEffect,
    importcpp: "IsEmpty", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc size*(this: Graphic3dSequenceOfHClipPlane): int {.noSideEffect,
    importcpp: "Size", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc append*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: Handle[Graphic3dClipPlane]): bool {.importcpp: "Append",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc remove*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: Handle[Graphic3dClipPlane]): bool {.importcpp: "Remove",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc remove*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: var Graphic3dSequenceOfHClipPlaneIterator) {.
    importcpp: "Remove", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc clear*(this: var Graphic3dSequenceOfHClipPlane) {.importcpp: "Clear",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc first*(this: Graphic3dSequenceOfHClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, importcpp: "First", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc dumpJson*(this: Graphic3dSequenceOfHClipPlane;
              theOStream: var StandardOStream; theDepth: int = -1) {.noSideEffect,
    importcpp: "DumpJson", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
discard "forward decl of Graphic3d_SequenceOfHClipPlane"
type
  HandleGraphic3dSequenceOfHClipPlane* = Handle[Graphic3dSequenceOfHClipPlane]

