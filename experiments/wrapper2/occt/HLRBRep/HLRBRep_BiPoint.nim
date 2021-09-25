##  Created on: 1992-08-21
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
type
  HLRBRepBiPoint* {.importcpp: "HLRBRep_BiPoint", header: "HLRBRep_BiPoint.hxx",
                   bycopy.} = object


proc constructHLRBRepBiPoint*(): HLRBRepBiPoint {.constructor,
    importcpp: "HLRBRep_BiPoint(@)", header: "HLRBRep_BiPoint.hxx".}
proc constructHLRBRepBiPoint*(x1: float; y1: float; z1: float; x2: float; y2: float;
                             z2: float; s: TopoDS_Shape; reg1: bool; regn: bool;
                             outl: bool; intl: bool): HLRBRepBiPoint {.constructor,
    importcpp: "HLRBRep_BiPoint(@)", header: "HLRBRep_BiPoint.hxx".}
proc p1*(this: HLRBRepBiPoint): Pnt {.noSideEffect, importcpp: "P1",
                                  header: "HLRBRep_BiPoint.hxx".}
proc p2*(this: HLRBRepBiPoint): Pnt {.noSideEffect, importcpp: "P2",
                                  header: "HLRBRep_BiPoint.hxx".}
proc shape*(this: HLRBRepBiPoint): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "HLRBRep_BiPoint.hxx".}
proc shape*(this: var HLRBRepBiPoint; s: TopoDS_Shape) {.importcpp: "Shape",
    header: "HLRBRep_BiPoint.hxx".}
proc rg1Line*(this: HLRBRepBiPoint): bool {.noSideEffect, importcpp: "Rg1Line",
                                        header: "HLRBRep_BiPoint.hxx".}
proc rg1Line*(this: var HLRBRepBiPoint; b: bool) {.importcpp: "Rg1Line",
    header: "HLRBRep_BiPoint.hxx".}
proc rgNLine*(this: HLRBRepBiPoint): bool {.noSideEffect, importcpp: "RgNLine",
                                        header: "HLRBRep_BiPoint.hxx".}
proc rgNLine*(this: var HLRBRepBiPoint; b: bool) {.importcpp: "RgNLine",
    header: "HLRBRep_BiPoint.hxx".}
proc outLine*(this: HLRBRepBiPoint): bool {.noSideEffect, importcpp: "OutLine",
                                        header: "HLRBRep_BiPoint.hxx".}
proc outLine*(this: var HLRBRepBiPoint; b: bool) {.importcpp: "OutLine",
    header: "HLRBRep_BiPoint.hxx".}
proc intLine*(this: HLRBRepBiPoint): bool {.noSideEffect, importcpp: "IntLine",
                                        header: "HLRBRep_BiPoint.hxx".}
proc intLine*(this: var HLRBRepBiPoint; b: bool) {.importcpp: "IntLine",
    header: "HLRBRep_BiPoint.hxx".}
