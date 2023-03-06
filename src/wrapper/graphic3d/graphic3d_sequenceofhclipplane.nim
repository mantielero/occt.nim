import ../../tkernel/standard/standard_types
import graphic3d_types





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




proc newGraphic3dSequenceOfHClipPlaneIterator*(): Graphic3dSequenceOfHClipPlaneIterator {.
    cdecl, constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc newGraphic3dSequenceOfHClipPlaneIterator*(
    thePlanes: Graphic3dSequenceOfHClipPlane): Graphic3dSequenceOfHClipPlaneIterator {.
    cdecl, constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc newGraphic3dSequenceOfHClipPlaneIterator*(
    thePlanes: Handle[Graphic3dSequenceOfHClipPlane]): Graphic3dSequenceOfHClipPlaneIterator {.
    cdecl, constructor, importcpp: "Graphic3d_SequenceOfHClipPlane::Iterator(@)",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc init*(this: var Graphic3dSequenceOfHClipPlaneIterator;
          thePlanes: Graphic3dSequenceOfHClipPlane) {.cdecl, importcpp: "Init",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc init*(this: var Graphic3dSequenceOfHClipPlaneIterator;
          thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "Init", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc newGraphic3dSequenceOfHClipPlane*(): Graphic3dSequenceOfHClipPlane {.cdecl,
    constructor, importcpp: "Graphic3d_SequenceOfHClipPlane(@)", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc toOverrideGlobal*(this: Graphic3dSequenceOfHClipPlane): bool {.noSideEffect,
    cdecl, importcpp: "ToOverrideGlobal", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc setOverrideGlobal*(this: var Graphic3dSequenceOfHClipPlane; theToOverride: bool) {.
    cdecl, importcpp: "SetOverrideGlobal", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc isEmpty*(this: Graphic3dSequenceOfHClipPlane): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc size*(this: Graphic3dSequenceOfHClipPlane): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc append*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: Handle[Graphic3dClipPlane]): bool {.cdecl, importcpp: "Append",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc remove*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: Handle[Graphic3dClipPlane]): bool {.cdecl, importcpp: "Remove",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc remove*(this: var Graphic3dSequenceOfHClipPlane;
            theItem: var Graphic3dSequenceOfHClipPlaneIterator) {.cdecl,
    importcpp: "Remove", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc clear*(this: var Graphic3dSequenceOfHClipPlane) {.cdecl, importcpp: "Clear",
    header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc first*(this: Graphic3dSequenceOfHClipPlane): Handle[Graphic3dClipPlane] {.
    noSideEffect, cdecl, importcpp: "First", header: "Graphic3d_SequenceOfHClipPlane.hxx".}
proc dumpJson*(this: Graphic3dSequenceOfHClipPlane;
              theOStream: var StandardOStream; theDepth: cint = -1) {.noSideEffect,
    cdecl, importcpp: "DumpJson", header: "Graphic3d_SequenceOfHClipPlane.hxx".}



