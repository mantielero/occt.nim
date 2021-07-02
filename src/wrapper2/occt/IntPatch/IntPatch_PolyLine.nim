##  Created on: 1993-01-29
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IntPatch_WLine"
discard "forward decl of IntPatch_RLine"
discard "forward decl of gp_Pnt2d"
type
  IntPatchPolyLine* {.importcpp: "IntPatch_PolyLine",
                     header: "IntPatch_PolyLine.hxx", bycopy.} = object of IntPatchPolygo


proc constructIntPatchPolyLine*(): IntPatchPolyLine {.constructor,
    importcpp: "IntPatch_PolyLine(@)", header: "IntPatch_PolyLine.hxx".}
proc constructIntPatchPolyLine*(initDefle: StandardReal): IntPatchPolyLine {.
    constructor, importcpp: "IntPatch_PolyLine(@)", header: "IntPatch_PolyLine.hxx".}
proc setWLine*(this: var IntPatchPolyLine; onFirst: StandardBoolean;
              line: Handle[IntPatchWLine]) {.importcpp: "SetWLine",
    header: "IntPatch_PolyLine.hxx".}
proc setRLine*(this: var IntPatchPolyLine; onFirst: StandardBoolean;
              line: Handle[IntPatchRLine]) {.importcpp: "SetRLine",
    header: "IntPatch_PolyLine.hxx".}
proc resetError*(this: var IntPatchPolyLine) {.importcpp: "ResetError",
    header: "IntPatch_PolyLine.hxx".}
proc nbPoints*(this: IntPatchPolyLine): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_PolyLine.hxx".}
proc point*(this: IntPatchPolyLine; index: StandardInteger): GpPnt2d {.noSideEffect,
    importcpp: "Point", header: "IntPatch_PolyLine.hxx".}

