##  Created on: 2016-10-14
##  Created by: Aleksandr Bobkov
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

type
  HLRAlgoPolyMask* {.size: sizeof(cint), importcpp: "HLRAlgo_PolyMask",
                    header: "HLRAlgo_PolyMask.hxx".} = enum
    HLRAlgoPolyMaskEMskOutLin1 = 1, HLRAlgoPolyMaskEMskOutLin2 = 2,
    HLRAlgoPolyMaskEMskOutLin3 = 4, HLRAlgoPolyMaskEMskGrALin1 = 8,
    HLRAlgoPolyMaskEMskGrALin2 = 16, HLRAlgoPolyMaskEMskGrALin3 = 32,
    HLRAlgoPolyMaskFMskBack = 64, HLRAlgoPolyMaskFMskSide = 128,
    HLRAlgoPolyMaskFMskHiding = 256, HLRAlgoPolyMaskFMskFlat = 512,
    HLRAlgoPolyMaskFMskOnOutL = 1024, HLRAlgoPolyMaskFMskOrBack = 2048,
    HLRAlgoPolyMaskFMskFrBack = 4096



























