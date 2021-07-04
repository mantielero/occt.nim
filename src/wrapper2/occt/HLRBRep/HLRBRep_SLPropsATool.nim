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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  HLRBRep_SLPropsATool* {.importcpp: "HLRBRep_SLPropsATool",
                         header: "HLRBRep_SLPropsATool.hxx", bycopy.} = object ## !
                                                                          ## Computes the point  <P> of 	
                                                                          ## parameter <U> and <V>
                                                                          ## ! on the
                                                                          ## Surface <A>.


proc Value*(A: Standard_Address; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    importcpp: "HLRBRep_SLPropsATool::Value(@)",
    header: "HLRBRep_SLPropsATool.hxx".}
proc D1*(A: Standard_Address; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.importcpp: "HLRBRep_SLPropsATool::D1(@)",
                                      header: "HLRBRep_SLPropsATool.hxx".}
proc D2*(A: Standard_Address; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; DUV: var gp_Vec) {.
    importcpp: "HLRBRep_SLPropsATool::D2(@)", header: "HLRBRep_SLPropsATool.hxx".}
proc DN*(A: Standard_Address; U: Standard_Real; V: Standard_Real; Nu: Standard_Integer;
        Nv: Standard_Integer): gp_Vec {.importcpp: "HLRBRep_SLPropsATool::DN(@)",
                                     header: "HLRBRep_SLPropsATool.hxx".}
proc Continuity*(A: Standard_Address): Standard_Integer {.
    importcpp: "HLRBRep_SLPropsATool::Continuity(@)",
    header: "HLRBRep_SLPropsATool.hxx".}
proc Bounds*(A: Standard_Address; U1: var Standard_Real; V1: var Standard_Real;
            U2: var Standard_Real; V2: var Standard_Real) {.
    importcpp: "HLRBRep_SLPropsATool::Bounds(@)",
    header: "HLRBRep_SLPropsATool.hxx".}