import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import ifselect_types
import ../../tkernel/tcolstd/tcolstd_types
import "../interface/interface_types"




##  Created on: 1994-11-07
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





proc newIFSelectSignCounter*(withmap: bool = true; withlist: bool = false): IFSelectSignCounter {.
    cdecl, constructor, importcpp: "IFSelect_SignCounter(@)", header: "IFSelect_SignCounter.hxx".}
proc newIFSelectSignCounter*(matcher: Handle[IFSelectSignature];
                            withmap: bool = true; withlist: bool = false): IFSelectSignCounter {.
    cdecl, constructor, importcpp: "IFSelect_SignCounter(@)", header: "IFSelect_SignCounter.hxx".}
proc signature*(this: IFSelectSignCounter): Handle[IFSelectSignature] {.
    noSideEffect, cdecl, importcpp: "Signature", header: "IFSelect_SignCounter.hxx".}
proc setMap*(this: var IFSelectSignCounter; withmap: bool) {.cdecl,
    importcpp: "SetMap", header: "IFSelect_SignCounter.hxx".}
proc addEntity*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
               model: Handle[InterfaceInterfaceModel]): bool {.cdecl,
    importcpp: "AddEntity", header: "IFSelect_SignCounter.hxx".}
proc addSign*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]) {.cdecl, importcpp: "AddSign",
    header: "IFSelect_SignCounter.hxx".}
proc addList*(this: var IFSelectSignCounter;
             list: Handle[TColStdHSequenceOfTransient];
             model: Handle[InterfaceInterfaceModel]) {.cdecl, importcpp: "AddList",
    header: "IFSelect_SignCounter.hxx".}
proc addWithGraph*(this: var IFSelectSignCounter;
                  list: Handle[TColStdHSequenceOfTransient]; graph: InterfaceGraph) {.
    cdecl, importcpp: "AddWithGraph", header: "IFSelect_SignCounter.hxx".}
proc addModel*(this: var IFSelectSignCounter; model: Handle[InterfaceInterfaceModel]) {.
    cdecl, importcpp: "AddModel", header: "IFSelect_SignCounter.hxx".}
proc addFromSelection*(this: var IFSelectSignCounter;
                      sel: Handle[IFSelectSelection]; g: InterfaceGraph) {.cdecl,
    importcpp: "AddFromSelection", header: "IFSelect_SignCounter.hxx".}
proc setSelection*(this: var IFSelectSignCounter; sel: Handle[IFSelectSelection]) {.
    cdecl, importcpp: "SetSelection", header: "IFSelect_SignCounter.hxx".}
proc selection*(this: IFSelectSignCounter): Handle[IFSelectSelection] {.
    noSideEffect, cdecl, importcpp: "Selection", header: "IFSelect_SignCounter.hxx".}
proc setSelMode*(this: var IFSelectSignCounter; selmode: cint) {.cdecl,
    importcpp: "SetSelMode", header: "IFSelect_SignCounter.hxx".}
proc selMode*(this: IFSelectSignCounter): cint {.noSideEffect, cdecl,
    importcpp: "SelMode", header: "IFSelect_SignCounter.hxx".}
proc computeSelected*(this: var IFSelectSignCounter; g: InterfaceGraph;
                     forced: bool = false): bool {.cdecl,
    importcpp: "ComputeSelected", header: "IFSelect_SignCounter.hxx".}
proc sign*(this: IFSelectSignCounter; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): Handle[TCollectionHAsciiString] {.
    noSideEffect, cdecl, importcpp: "Sign", header: "IFSelect_SignCounter.hxx".}
proc computedSign*(this: var IFSelectSignCounter; ent: Handle[StandardTransient];
                  g: InterfaceGraph): cstring {.cdecl, importcpp: "ComputedSign",
    header: "IFSelect_SignCounter.hxx".}


