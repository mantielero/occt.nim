##  Created on: 1993-04-20
##  Created by: Modelistation
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  HLRBRepCLPropsATool* {.importcpp: "HLRBRep_CLPropsATool",
                        header: "HLRBRep_CLPropsATool.hxx", bycopy.} = object ## !
                                                                         ## Computes the  point <P> of
                                                                         ## parameter <U>   on the
                                                                         ## ! Curve from HLRBRep <C>.


proc value*(a: ptr HLRBRepCurve; u: StandardReal; p: var GpPnt2d) {.
    importcpp: "HLRBRep_CLPropsATool::Value(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc d1*(a: ptr HLRBRepCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d) {.
    importcpp: "HLRBRep_CLPropsATool::D1(@)", header: "HLRBRep_CLPropsATool.hxx".}
proc d2*(a: ptr HLRBRepCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d) {.importcpp: "HLRBRep_CLPropsATool::D2(@)",
                        header: "HLRBRep_CLPropsATool.hxx".}
proc d3*(a: ptr HLRBRepCurve; u: StandardReal; p: var GpPnt2d; v1: var GpVec2d;
        v2: var GpVec2d; v3: var GpVec2d) {.importcpp: "HLRBRep_CLPropsATool::D3(@)",
                                      header: "HLRBRep_CLPropsATool.hxx".}
proc continuity*(a: ptr HLRBRepCurve): StandardInteger {.
    importcpp: "HLRBRep_CLPropsATool::Continuity(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc firstParameter*(a: ptr HLRBRepCurve): StandardReal {.
    importcpp: "HLRBRep_CLPropsATool::FirstParameter(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc lastParameter*(a: ptr HLRBRepCurve): StandardReal {.
    importcpp: "HLRBRep_CLPropsATool::LastParameter(@)",
    header: "HLRBRep_CLPropsATool.hxx".}

