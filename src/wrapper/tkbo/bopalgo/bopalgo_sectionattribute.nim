import bopalgo_types

##  Created on: 2002-03-04
##  Created by: Michael KLOKOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

## ! Class is a container of the flags used
## ! by intersection algorithm



proc newBOPAlgoSectionAttribute*(): BOPAlgoSectionAttribute {.cdecl, constructor,
    importcpp: "BOPAlgo_SectionAttribute(@)", header: "BOPAlgo_SectionAttribute.hxx".}
proc newBOPAlgoSectionAttribute*(theAproximation: bool; thePCurveOnS1: bool;
                                thePCurveOnS2: bool): BOPAlgoSectionAttribute {.
    cdecl, constructor, importcpp: "BOPAlgo_SectionAttribute(@)", header: "BOPAlgo_SectionAttribute.hxx".}
proc approximation*(this: var BOPAlgoSectionAttribute; theApprox: bool) {.cdecl,
    importcpp: "Approximation", header: "BOPAlgo_SectionAttribute.hxx".}
proc pCurveOnS1*(this: var BOPAlgoSectionAttribute; thePCurveOnS1: bool) {.cdecl,
    importcpp: "PCurveOnS1", header: "BOPAlgo_SectionAttribute.hxx".}
proc pCurveOnS2*(this: var BOPAlgoSectionAttribute; thePCurveOnS2: bool) {.cdecl,
    importcpp: "PCurveOnS2", header: "BOPAlgo_SectionAttribute.hxx".}
proc approximation*(this: BOPAlgoSectionAttribute): bool {.noSideEffect, cdecl,
    importcpp: "Approximation", header: "BOPAlgo_SectionAttribute.hxx".}
proc pCurveOnS1*(this: BOPAlgoSectionAttribute): bool {.noSideEffect, cdecl,
    importcpp: "PCurveOnS1", header: "BOPAlgo_SectionAttribute.hxx".}
proc pCurveOnS2*(this: BOPAlgoSectionAttribute): bool {.noSideEffect, cdecl,
    importcpp: "PCurveOnS2", header: "BOPAlgo_SectionAttribute.hxx".}
