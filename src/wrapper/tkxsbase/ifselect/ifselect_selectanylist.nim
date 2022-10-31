import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types





##  Created on: 1992-12-09
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





proc keepInputEntity*(this: IFSelectSelectAnyList;
                     iter: var InterfaceEntityIterator) {.noSideEffect, cdecl,
    importcpp: "KeepInputEntity", header: "IFSelect_SelectAnyList.hxx".}
proc nbItems*(this: IFSelectSelectAnyList; ent: Handle[StandardTransient]): cint {.
    noSideEffect, cdecl, importcpp: "NbItems", header: "IFSelect_SelectAnyList.hxx".}
proc setRange*(this: var IFSelectSelectAnyList; rankfrom: Handle[IFSelectIntParam];
              rankto: Handle[IFSelectIntParam]) {.cdecl, importcpp: "SetRange",
    header: "IFSelect_SelectAnyList.hxx".}
proc setOne*(this: var IFSelectSelectAnyList; rank: Handle[IFSelectIntParam]) {.cdecl,
    importcpp: "SetOne", header: "IFSelect_SelectAnyList.hxx".}
proc setFrom*(this: var IFSelectSelectAnyList; rankfrom: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetFrom", header: "IFSelect_SelectAnyList.hxx".}
proc setUntil*(this: var IFSelectSelectAnyList; rankto: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetUntil", header: "IFSelect_SelectAnyList.hxx".}
proc hasLower*(this: IFSelectSelectAnyList): bool {.noSideEffect, cdecl,
    importcpp: "HasLower", header: "IFSelect_SelectAnyList.hxx".}
proc lower*(this: IFSelectSelectAnyList): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Lower", header: "IFSelect_SelectAnyList.hxx".}
proc lowerValue*(this: IFSelectSelectAnyList): cint {.noSideEffect, cdecl,
    importcpp: "LowerValue", header: "IFSelect_SelectAnyList.hxx".}
proc hasUpper*(this: IFSelectSelectAnyList): bool {.noSideEffect, cdecl,
    importcpp: "HasUpper", header: "IFSelect_SelectAnyList.hxx".}
proc upper*(this: IFSelectSelectAnyList): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Upper", header: "IFSelect_SelectAnyList.hxx".}
proc upperValue*(this: IFSelectSelectAnyList): cint {.noSideEffect, cdecl,
    importcpp: "UpperValue", header: "IFSelect_SelectAnyList.hxx".}
proc rootResult*(this: IFSelectSelectAnyList; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectAnyList.hxx".}
proc fillResult*(this: IFSelectSelectAnyList; n1: cint; n2: cint;
                ent: Handle[StandardTransient]; res: var InterfaceEntityIterator) {.
    noSideEffect, cdecl, importcpp: "FillResult", header: "IFSelect_SelectAnyList.hxx".}
proc label*(this: IFSelectSelectAnyList): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_SelectAnyList.hxx".}
proc listLabel*(this: IFSelectSelectAnyList): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "ListLabel", header: "IFSelect_SelectAnyList.hxx".}


