##  Created on: 1996-11-07
##  Created by: Laurent BUCHARD
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

discard "forward decl of IntPatch_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntPatchLineConstructor* {.importcpp: "IntPatch_LineConstructor",
                            header: "IntPatch_LineConstructor.hxx", bycopy.} = object


proc constructIntPatchLineConstructor*(mode: int): IntPatchLineConstructor {.
    constructor, importcpp: "IntPatch_LineConstructor(@)",
    header: "IntPatch_LineConstructor.hxx".}
proc perform*(this: var IntPatchLineConstructor; sl: IntPatchSequenceOfLine;
             L: Handle[IntPatchLine]; s1: Handle[Adaptor3dHSurface];
             d1: Handle[Adaptor3dTopolTool]; s2: Handle[Adaptor3dHSurface];
             d2: Handle[Adaptor3dTopolTool]; tol: float) {.importcpp: "Perform",
    header: "IntPatch_LineConstructor.hxx".}
proc nbLines*(this: IntPatchLineConstructor): int {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_LineConstructor.hxx".}
proc line*(this: IntPatchLineConstructor; index: int): Handle[IntPatchLine] {.
    noSideEffect, importcpp: "Line", header: "IntPatch_LineConstructor.hxx".}
