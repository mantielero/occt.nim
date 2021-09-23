##  Created on: 1993-05-06
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../Intf/Intf_Polygon2d,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt2d"
type
  IntPatch_Polygo* {.importcpp: "IntPatch_Polygo", header: "IntPatch_Polygo.hxx",
                    bycopy.} = object of Intf_Polygon2d


proc Error*(this: IntPatch_Polygo): Standard_Real {.noSideEffect, importcpp: "Error",
    header: "IntPatch_Polygo.hxx".}
proc NbPoints*(this: IntPatch_Polygo): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_Polygo.hxx".}
proc Point*(this: IntPatch_Polygo; Index: Standard_Integer): gp_Pnt2d {.noSideEffect,
    importcpp: "Point", header: "IntPatch_Polygo.hxx".}
proc DeflectionOverEstimation*(this: IntPatch_Polygo): Standard_Real {.noSideEffect,
    importcpp: "DeflectionOverEstimation", header: "IntPatch_Polygo.hxx".}
proc NbSegments*(this: IntPatch_Polygo): Standard_Integer {.noSideEffect,
    importcpp: "NbSegments", header: "IntPatch_Polygo.hxx".}
proc Segment*(this: IntPatch_Polygo; theIndex: Standard_Integer;
             theBegin: var gp_Pnt2d; theEnd: var gp_Pnt2d) {.noSideEffect,
    importcpp: "Segment", header: "IntPatch_Polygo.hxx".}
proc Dump*(this: IntPatch_Polygo) {.noSideEffect, importcpp: "Dump",
                                 header: "IntPatch_Polygo.hxx".}