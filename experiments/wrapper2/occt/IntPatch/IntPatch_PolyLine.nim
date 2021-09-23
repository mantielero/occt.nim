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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, IntPatch_IType,
  ../Standard/Standard_Boolean, IntPatch_Polygo, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of IntPatch_WLine"
discard "forward decl of IntPatch_RLine"
discard "forward decl of gp_Pnt2d"
type
  IntPatch_PolyLine* {.importcpp: "IntPatch_PolyLine",
                      header: "IntPatch_PolyLine.hxx", bycopy.} = object of IntPatch_Polygo


proc constructIntPatch_PolyLine*(): IntPatch_PolyLine {.constructor,
    importcpp: "IntPatch_PolyLine(@)", header: "IntPatch_PolyLine.hxx".}
proc constructIntPatch_PolyLine*(InitDefle: Standard_Real): IntPatch_PolyLine {.
    constructor, importcpp: "IntPatch_PolyLine(@)", header: "IntPatch_PolyLine.hxx".}
proc SetWLine*(this: var IntPatch_PolyLine; OnFirst: Standard_Boolean;
              Line: handle[IntPatch_WLine]) {.importcpp: "SetWLine",
    header: "IntPatch_PolyLine.hxx".}
proc SetRLine*(this: var IntPatch_PolyLine; OnFirst: Standard_Boolean;
              Line: handle[IntPatch_RLine]) {.importcpp: "SetRLine",
    header: "IntPatch_PolyLine.hxx".}
proc ResetError*(this: var IntPatch_PolyLine) {.importcpp: "ResetError",
    header: "IntPatch_PolyLine.hxx".}
proc NbPoints*(this: IntPatch_PolyLine): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_PolyLine.hxx".}
proc Point*(this: IntPatch_PolyLine; Index: Standard_Integer): gp_Pnt2d {.
    noSideEffect, importcpp: "Point", header: "IntPatch_PolyLine.hxx".}