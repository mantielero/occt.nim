##  Created on: 1995-09-21
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, BRepFill_MultiLine, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of StdFail_NotDone"
type
  BRepFill_ApproxSeewing* {.importcpp: "BRepFill_ApproxSeewing",
                           header: "BRepFill_ApproxSeewing.hxx", bycopy.} = object


proc constructBRepFill_ApproxSeewing*(): BRepFill_ApproxSeewing {.constructor,
    importcpp: "BRepFill_ApproxSeewing(@)", header: "BRepFill_ApproxSeewing.hxx".}
proc constructBRepFill_ApproxSeewing*(ML: BRepFill_MultiLine): BRepFill_ApproxSeewing {.
    constructor, importcpp: "BRepFill_ApproxSeewing(@)",
    header: "BRepFill_ApproxSeewing.hxx".}
proc Perform*(this: var BRepFill_ApproxSeewing; ML: BRepFill_MultiLine) {.
    importcpp: "Perform", header: "BRepFill_ApproxSeewing.hxx".}
proc IsDone*(this: BRepFill_ApproxSeewing): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_ApproxSeewing.hxx".}
proc Curve*(this: BRepFill_ApproxSeewing): handle[Geom_Curve] {.noSideEffect,
    importcpp: "Curve", header: "BRepFill_ApproxSeewing.hxx".}
proc CurveOnF1*(this: BRepFill_ApproxSeewing): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "CurveOnF1", header: "BRepFill_ApproxSeewing.hxx".}
proc CurveOnF2*(this: BRepFill_ApproxSeewing): handle[Geom2d_Curve] {.noSideEffect,
    importcpp: "CurveOnF2", header: "BRepFill_ApproxSeewing.hxx".}