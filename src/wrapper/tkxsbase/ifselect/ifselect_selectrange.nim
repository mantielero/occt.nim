import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1992-11-18
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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





proc newIFSelectSelectRange*(): IFSelectSelectRange {.cdecl, constructor,
    importcpp: "IFSelect_SelectRange(@)", header: "IFSelect_SelectRange.hxx".}
proc setRange*(this: var IFSelectSelectRange; rankfrom: Handle[IFSelectIntParam];
              rankto: Handle[IFSelectIntParam]) {.cdecl, importcpp: "SetRange",
    header: "IFSelect_SelectRange.hxx".}
proc setOne*(this: var IFSelectSelectRange; rank: Handle[IFSelectIntParam]) {.cdecl,
    importcpp: "SetOne", header: "IFSelect_SelectRange.hxx".}
proc setFrom*(this: var IFSelectSelectRange; rankfrom: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetFrom", header: "IFSelect_SelectRange.hxx".}
proc setUntil*(this: var IFSelectSelectRange; rankto: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetUntil", header: "IFSelect_SelectRange.hxx".}
proc hasLower*(this: IFSelectSelectRange): bool {.noSideEffect, cdecl,
    importcpp: "HasLower", header: "IFSelect_SelectRange.hxx".}
proc lower*(this: IFSelectSelectRange): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Lower", header: "IFSelect_SelectRange.hxx".}
proc lowerValue*(this: IFSelectSelectRange): cint {.noSideEffect, cdecl,
    importcpp: "LowerValue", header: "IFSelect_SelectRange.hxx".}
proc hasUpper*(this: IFSelectSelectRange): bool {.noSideEffect, cdecl,
    importcpp: "HasUpper", header: "IFSelect_SelectRange.hxx".}
proc upper*(this: IFSelectSelectRange): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Upper", header: "IFSelect_SelectRange.hxx".}
proc upperValue*(this: IFSelectSelectRange): cint {.noSideEffect, cdecl,
    importcpp: "UpperValue", header: "IFSelect_SelectRange.hxx".}
proc sort*(this: IFSelectSelectRange; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectRange.hxx".}
proc extractLabel*(this: IFSelectSelectRange): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectRange.hxx".}


