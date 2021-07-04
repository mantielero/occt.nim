##  Created on: 1996-12-03
##  Created by: Christophe MARION
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

## ! to Update OutLines.

type
  HLRAlgo_PolyInternalSegment* {.importcpp: "HLRAlgo_PolyInternalSegment",
                                header: "HLRAlgo_PolyInternalSegment.hxx", bycopy.} = object
    LstSg1* {.importc: "LstSg1".}: Standard_Integer
    LstSg2* {.importc: "LstSg2".}: Standard_Integer
    NxtSg1* {.importc: "NxtSg1".}: Standard_Integer
    NxtSg2* {.importc: "NxtSg2".}: Standard_Integer
    Conex1* {.importc: "Conex1".}: Standard_Integer
    Conex2* {.importc: "Conex2".}: Standard_Integer
