##  Created on: 1994-09-02
##  Created by: Yves FRICAUD
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_CurveType,
  ../Standard/Standard_Real

discard "forward decl of LProp_CurAndInf"
type
  LProp_AnalyticCurInf* {.importcpp: "LProp_AnalyticCurInf",
                         header: "LProp_AnalyticCurInf.hxx", bycopy.} = object


proc constructLProp_AnalyticCurInf*(): LProp_AnalyticCurInf {.constructor,
    importcpp: "LProp_AnalyticCurInf(@)", header: "LProp_AnalyticCurInf.hxx".}
proc Perform*(this: var LProp_AnalyticCurInf; T: GeomAbs_CurveType;
             UFirst: Standard_Real; ULast: Standard_Real;
             Result: var LProp_CurAndInf) {.importcpp: "Perform",
    header: "LProp_AnalyticCurInf.hxx".}