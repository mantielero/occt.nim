import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types



##  Created on: 1993-10-19
##  Created by: Christian CAILLET
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





proc mayChangeGraph*(this: IFSelectGeneralModifier): bool {.noSideEffect, cdecl,
    importcpp: "MayChangeGraph", header: "IFSelect_GeneralModifier.hxx".}
proc setDispatch*(this: var IFSelectGeneralModifier; disp: Handle[IFSelectDispatch]) {.
    cdecl, importcpp: "SetDispatch", header: "IFSelect_GeneralModifier.hxx".}
proc dispatch*(this: IFSelectGeneralModifier): Handle[IFSelectDispatch] {.
    noSideEffect, cdecl, importcpp: "Dispatch", header: "IFSelect_GeneralModifier.hxx".}
proc applies*(this: IFSelectGeneralModifier; disp: Handle[IFSelectDispatch]): bool {.
    noSideEffect, cdecl, importcpp: "Applies", header: "IFSelect_GeneralModifier.hxx".}
proc setSelection*(this: var IFSelectGeneralModifier; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetSelection", header: "IFSelect_GeneralModifier.hxx".}
proc resetSelection*(this: var IFSelectGeneralModifier) {.cdecl,
    importcpp: "ResetSelection", header: "IFSelect_GeneralModifier.hxx".}
proc hasSelection*(this: IFSelectGeneralModifier): bool {.noSideEffect, cdecl,
    importcpp: "HasSelection", header: "IFSelect_GeneralModifier.hxx".}
proc selection*(this: IFSelectGeneralModifier): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Selection", header: "IFSelect_GeneralModifier.hxx".}
proc label*(this: IFSelectGeneralModifier): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_GeneralModifier.hxx".}

