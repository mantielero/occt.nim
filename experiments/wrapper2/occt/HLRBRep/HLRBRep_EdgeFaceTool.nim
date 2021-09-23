##  Created on: 1993-10-18
##  Created by: Christophe MARION
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
  ../Standard/Standard_Address, ../Standard/Standard_Boolean

discard "forward decl of gp_Dir"
type
  HLRBRep_EdgeFaceTool* {.importcpp: "HLRBRep_EdgeFaceTool",
                         header: "HLRBRep_EdgeFaceTool.hxx", bycopy.} = object


proc CurvatureValue*(F: Standard_Address; U: Standard_Real; V: Standard_Real;
                    Tg: gp_Dir): Standard_Real {.
    importcpp: "HLRBRep_EdgeFaceTool::CurvatureValue(@)",
    header: "HLRBRep_EdgeFaceTool.hxx".}
proc UVPoint*(Par: Standard_Real; E: Standard_Address; F: Standard_Address;
             U: var Standard_Real; V: var Standard_Real): Standard_Boolean {.
    importcpp: "HLRBRep_EdgeFaceTool::UVPoint(@)",
    header: "HLRBRep_EdgeFaceTool.hxx".}