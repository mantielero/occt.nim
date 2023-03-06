import ../tcollection/tcollection_types
import ../standard/standard_types
import ifselect_types
import "../interface/interface_types"




##  Created on: 1994-12-21
##  Created by: Christian CAILLET
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





proc newIFSelectDispPerFiles*(): IFSelectDispPerFiles {.cdecl, constructor,
    importcpp: "IFSelect_DispPerFiles(@)", header: "IFSelect_DispPerFiles.hxx".}
proc count*(this: IFSelectDispPerFiles): Handle[IFSelectIntParam] {.noSideEffect,
    cdecl, importcpp: "Count", header: "IFSelect_DispPerFiles.hxx".}
proc setCount*(this: var IFSelectDispPerFiles; count: Handle[IFSelectIntParam]) {.
    cdecl, importcpp: "SetCount", header: "IFSelect_DispPerFiles.hxx".}
proc countValue*(this: IFSelectDispPerFiles): cint {.noSideEffect, cdecl,
    importcpp: "CountValue", header: "IFSelect_DispPerFiles.hxx".}
proc label*(this: IFSelectDispPerFiles): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_DispPerFiles.hxx".}
proc limitedMax*(this: IFSelectDispPerFiles; nbent: cint; max: var cint): bool {.
    noSideEffect, cdecl, importcpp: "LimitedMax", header: "IFSelect_DispPerFiles.hxx".}
proc packets*(this: IFSelectDispPerFiles; g: InterfaceGraph;
             packs: var IFGraphSubPartsIterator) {.noSideEffect, cdecl,
    importcpp: "Packets", header: "IFSelect_DispPerFiles.hxx".}


