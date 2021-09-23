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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  HLRBRep_CLPropsATool* {.importcpp: "HLRBRep_CLPropsATool",
                         header: "HLRBRep_CLPropsATool.hxx", bycopy.} = object ## !
                                                                          ## Computes the  point <P> of
                                                                          ## parameter <U>   on the
                                                                          ## ! Curve from
                                                                          ## HLRBRep <C>.


proc Value*(A: ptr HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "HLRBRep_CLPropsATool::Value(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc D1*(A: ptr HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "HLRBRep_CLPropsATool::D1(@)", header: "HLRBRep_CLPropsATool.hxx".}
proc D2*(A: ptr HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "HLRBRep_CLPropsATool::D2(@)",
                         header: "HLRBRep_CLPropsATool.hxx".}
proc D3*(A: ptr HLRBRep_Curve; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "HLRBRep_CLPropsATool::D3(@)",
                                        header: "HLRBRep_CLPropsATool.hxx".}
proc Continuity*(A: ptr HLRBRep_Curve): Standard_Integer {.
    importcpp: "HLRBRep_CLPropsATool::Continuity(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc FirstParameter*(A: ptr HLRBRep_Curve): Standard_Real {.
    importcpp: "HLRBRep_CLPropsATool::FirstParameter(@)",
    header: "HLRBRep_CLPropsATool.hxx".}
proc LastParameter*(A: ptr HLRBRep_Curve): Standard_Real {.
    importcpp: "HLRBRep_CLPropsATool::LastParameter(@)",
    header: "HLRBRep_CLPropsATool.hxx".}