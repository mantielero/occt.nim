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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

## ! Contains the colors of a shape.

type
  HLRBRep_BiPnt2D* {.importcpp: "HLRBRep_BiPnt2D", header: "HLRBRep_BiPnt2D.hxx",
                    bycopy.} = object


proc constructHLRBRep_BiPnt2D*(): HLRBRep_BiPnt2D {.constructor,
    importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc constructHLRBRep_BiPnt2D*(x1: Standard_Real; y1: Standard_Real;
                              x2: Standard_Real; y2: Standard_Real; S: TopoDS_Shape;
                              reg1: Standard_Boolean; regn: Standard_Boolean;
                              outl: Standard_Boolean; intl: Standard_Boolean): HLRBRep_BiPnt2D {.
    constructor, importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc constructHLRBRep_BiPnt2D*(thePoint1: gp_XY; thePoint2: gp_XY; S: TopoDS_Shape;
                              reg1: Standard_Boolean; regn: Standard_Boolean;
                              outl: Standard_Boolean; intl: Standard_Boolean): HLRBRep_BiPnt2D {.
    constructor, importcpp: "HLRBRep_BiPnt2D(@)", header: "HLRBRep_BiPnt2D.hxx".}
proc P1*(this: HLRBRep_BiPnt2D): gp_Pnt2d {.noSideEffect, importcpp: "P1",
                                        header: "HLRBRep_BiPnt2D.hxx".}
proc P2*(this: HLRBRep_BiPnt2D): gp_Pnt2d {.noSideEffect, importcpp: "P2",
                                        header: "HLRBRep_BiPnt2D.hxx".}
proc Shape*(this: HLRBRep_BiPnt2D): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "HLRBRep_BiPnt2D.hxx".}
proc Shape*(this: var HLRBRep_BiPnt2D; S: TopoDS_Shape) {.importcpp: "Shape",
    header: "HLRBRep_BiPnt2D.hxx".}
proc Rg1Line*(this: HLRBRep_BiPnt2D): Standard_Boolean {.noSideEffect,
    importcpp: "Rg1Line", header: "HLRBRep_BiPnt2D.hxx".}
proc Rg1Line*(this: var HLRBRep_BiPnt2D; B: Standard_Boolean) {.importcpp: "Rg1Line",
    header: "HLRBRep_BiPnt2D.hxx".}
proc RgNLine*(this: HLRBRep_BiPnt2D): Standard_Boolean {.noSideEffect,
    importcpp: "RgNLine", header: "HLRBRep_BiPnt2D.hxx".}
proc RgNLine*(this: var HLRBRep_BiPnt2D; B: Standard_Boolean) {.importcpp: "RgNLine",
    header: "HLRBRep_BiPnt2D.hxx".}
proc OutLine*(this: HLRBRep_BiPnt2D): Standard_Boolean {.noSideEffect,
    importcpp: "OutLine", header: "HLRBRep_BiPnt2D.hxx".}
proc OutLine*(this: var HLRBRep_BiPnt2D; B: Standard_Boolean) {.importcpp: "OutLine",
    header: "HLRBRep_BiPnt2D.hxx".}
proc IntLine*(this: HLRBRep_BiPnt2D): Standard_Boolean {.noSideEffect,
    importcpp: "IntLine", header: "HLRBRep_BiPnt2D.hxx".}
proc IntLine*(this: var HLRBRep_BiPnt2D; B: Standard_Boolean) {.importcpp: "IntLine",
    header: "HLRBRep_BiPnt2D.hxx".}