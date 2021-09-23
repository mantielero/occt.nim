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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IntPatch_SequenceOfLine,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of IntPatch_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
type
  IntPatch_LineConstructor* {.importcpp: "IntPatch_LineConstructor",
                             header: "IntPatch_LineConstructor.hxx", bycopy.} = object


proc constructIntPatch_LineConstructor*(mode: Standard_Integer): IntPatch_LineConstructor {.
    constructor, importcpp: "IntPatch_LineConstructor(@)",
    header: "IntPatch_LineConstructor.hxx".}
proc Perform*(this: var IntPatch_LineConstructor; SL: IntPatch_SequenceOfLine;
             L: handle[IntPatch_Line]; S1: handle[Adaptor3d_HSurface];
             D1: handle[Adaptor3d_TopolTool]; S2: handle[Adaptor3d_HSurface];
             D2: handle[Adaptor3d_TopolTool]; Tol: Standard_Real) {.
    importcpp: "Perform", header: "IntPatch_LineConstructor.hxx".}
proc NbLines*(this: IntPatch_LineConstructor): Standard_Integer {.noSideEffect,
    importcpp: "NbLines", header: "IntPatch_LineConstructor.hxx".}
proc Line*(this: IntPatch_LineConstructor; index: Standard_Integer): handle[
    IntPatch_Line] {.noSideEffect, importcpp: "Line",
                    header: "IntPatch_LineConstructor.hxx".}