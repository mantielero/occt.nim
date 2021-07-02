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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt2d"
type
  IntPatchPolygo* {.importcpp: "IntPatch_Polygo", header: "IntPatch_Polygo.hxx",
                   bycopy.} = object of IntfPolygon2d


proc error*(this: IntPatchPolygo): StandardReal {.noSideEffect, importcpp: "Error",
    header: "IntPatch_Polygo.hxx".}
proc nbPoints*(this: IntPatchPolygo): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "IntPatch_Polygo.hxx".}
proc point*(this: IntPatchPolygo; index: StandardInteger): GpPnt2d {.noSideEffect,
    importcpp: "Point", header: "IntPatch_Polygo.hxx".}
proc deflectionOverEstimation*(this: IntPatchPolygo): StandardReal {.noSideEffect,
    importcpp: "DeflectionOverEstimation", header: "IntPatch_Polygo.hxx".}
proc nbSegments*(this: IntPatchPolygo): StandardInteger {.noSideEffect,
    importcpp: "NbSegments", header: "IntPatch_Polygo.hxx".}
proc segment*(this: IntPatchPolygo; theIndex: StandardInteger; theBegin: var GpPnt2d;
             theEnd: var GpPnt2d) {.noSideEffect, importcpp: "Segment",
                                 header: "IntPatch_Polygo.hxx".}
proc dump*(this: IntPatchPolygo) {.noSideEffect, importcpp: "Dump",
                                header: "IntPatch_Polygo.hxx".}

