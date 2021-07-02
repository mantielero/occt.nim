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

## ! Contains the colors of a shape.

type
  HLRBRepBiPnt2D* {.importcpp: "HLRBRep_BiPnt2D", header: "HLRBRep_BiPnt2D.hxx",
                   bycopy.} = object


proc constructHLRBRepBiPnt2D*(): HLRBRepBiPnt2D {.constructor,
    importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc constructHLRBRepBiPnt2D*(x1: StandardReal; y1: StandardReal; x2: StandardReal;
                             y2: StandardReal; s: TopoDS_Shape;
                             reg1: StandardBoolean; regn: StandardBoolean;
                             outl: StandardBoolean; intl: StandardBoolean): HLRBRepBiPnt2D {.
    constructor, importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc constructHLRBRepBiPnt2D*(thePoint1: GpXY; thePoint2: GpXY; s: TopoDS_Shape;
                             reg1: StandardBoolean; regn: StandardBoolean;
                             outl: StandardBoolean; intl: StandardBoolean): HLRBRepBiPnt2D {.
    constructor, importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc p1*(this: HLRBRepBiPnt2D): GpPnt2d {.noSideEffect, importcpp: "P1",
                                      header: "HLRBRep_BiPnt2D.hxx".}
proc p2*(this: HLRBRepBiPnt2D): GpPnt2d {.noSideEffect, importcpp: "P2",
                                      header: "HLRBRep_BiPnt2D.hxx".}
proc shape*(this: HLRBRepBiPnt2D): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "HLRBRep_BiPnt2D.hxx".}
proc shape*(this: var HLRBRepBiPnt2D; s: TopoDS_Shape) {.importcpp: "Shape",
    header: "HLRBRep_BiPnt2D.hxx".}
proc rg1Line*(this: HLRBRepBiPnt2D): StandardBoolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRBRep_BiPnt2D.hxx".}
proc rg1Line*(this: var HLRBRepBiPnt2D; b: StandardBoolean) {.importcpp: "Rg1Line",
    header: "HLRBRep_BiPnt2D.hxx".}
proc rgNLine*(this: HLRBRepBiPnt2D): StandardBoolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRBRep_BiPnt2D.hxx".}
proc rgNLine*(this: var HLRBRepBiPnt2D; b: StandardBoolean) {.importcpp: "RgNLine",
    header: "HLRBRep_BiPnt2D.hxx".}
proc outLine*(this: HLRBRepBiPnt2D): StandardBoolean {.noSideEffect,
    importcpp: "OutLine", header: "HLRBRep_BiPnt2D.hxx".}
proc outLine*(this: var HLRBRepBiPnt2D; b: StandardBoolean) {.importcpp: "OutLine",
    header: "HLRBRep_BiPnt2D.hxx".}
proc intLine*(this: HLRBRepBiPnt2D): StandardBoolean {.noSideEffect,
    importcpp: "IntLine", header: "HLRBRep_BiPnt2D.hxx".}
proc intLine*(this: var HLRBRepBiPnt2D; b: StandardBoolean) {.importcpp: "IntLine",
    header: "HLRBRep_BiPnt2D.hxx".}

