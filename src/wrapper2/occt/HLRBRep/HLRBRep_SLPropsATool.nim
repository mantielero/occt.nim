##  Created on: 1993-04-23
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

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  HLRBRepSLPropsATool* {.importcpp: "HLRBRep_SLPropsATool",
                        header: "HLRBRep_SLPropsATool.hxx", bycopy.} = object ## !
                                                                         ## Computes the point  <P> of 	
                                                                         ## parameter <U> and <V>
                                                                         ## ! on the Surface <A>.


proc value*(a: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    importcpp: "HLRBRep_SLPropsATool::Value(@)",
    header: "HLRBRep_SLPropsATool.hxx".}
proc d1*(a: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.importcpp: "HLRBRep_SLPropsATool::D1(@)",
                                    header: "HLRBRep_SLPropsATool.hxx".}
proc d2*(a: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; duv: var GpVec) {.
    importcpp: "HLRBRep_SLPropsATool::D2(@)", header: "HLRBRep_SLPropsATool.hxx".}
proc dn*(a: StandardAddress; u: StandardReal; v: StandardReal; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "HLRBRep_SLPropsATool::DN(@)",
                                   header: "HLRBRep_SLPropsATool.hxx".}
proc continuity*(a: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_SLPropsATool::Continuity(@)",
    header: "HLRBRep_SLPropsATool.hxx".}
proc bounds*(a: StandardAddress; u1: var StandardReal; v1: var StandardReal;
            u2: var StandardReal; v2: var StandardReal) {.
    importcpp: "HLRBRep_SLPropsATool::Bounds(@)",
    header: "HLRBRep_SLPropsATool.hxx".}

