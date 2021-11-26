##  Created on: 1993-11-10
##  Created by: Laurent BOURESCHE
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

discard "forward decl of TopoDS_Vertex"
discard "forward decl of ChFiDS_Stripe"
type
  ChFiDS_StripeMap* {.importcpp: "ChFiDS_StripeMap",
                     header: "ChFiDS_StripeMap.hxx", bycopy.} = object


proc `new`*(this: var ChFiDS_StripeMap; theSize: csize_t): pointer {.
    importcpp: "ChFiDS_StripeMap::operator new", header: "ChFiDS_StripeMap.hxx".}
proc `delete`*(this: var ChFiDS_StripeMap; theAddress: pointer) {.
    importcpp: "ChFiDS_StripeMap::operator delete", header: "ChFiDS_StripeMap.hxx".}
proc `new[]`*(this: var ChFiDS_StripeMap; theSize: csize_t): pointer {.
    importcpp: "ChFiDS_StripeMap::operator new[]", header: "ChFiDS_StripeMap.hxx".}
proc `delete[]`*(this: var ChFiDS_StripeMap; theAddress: pointer) {.
    importcpp: "ChFiDS_StripeMap::operator delete[]",
    header: "ChFiDS_StripeMap.hxx".}
proc `new`*(this: var ChFiDS_StripeMap; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "ChFiDS_StripeMap::operator new", header: "ChFiDS_StripeMap.hxx".}
proc `delete`*(this: var ChFiDS_StripeMap; a2: pointer; a3: pointer) {.
    importcpp: "ChFiDS_StripeMap::operator delete", header: "ChFiDS_StripeMap.hxx".}
proc constructChFiDS_StripeMap*(): ChFiDS_StripeMap {.constructor,
    importcpp: "ChFiDS_StripeMap(@)", header: "ChFiDS_StripeMap.hxx".}
proc add*(this: var ChFiDS_StripeMap; v: TopoDS_Vertex; f: Handle[ChFiDS_Stripe]) {.
    importcpp: "Add", header: "ChFiDS_StripeMap.hxx".}
proc extent*(this: ChFiDS_StripeMap): int {.noSideEffect, importcpp: "Extent",
                                        header: "ChFiDS_StripeMap.hxx".}
proc findFromKey*(this: ChFiDS_StripeMap; v: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "FindFromKey", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; v: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc findFromIndex*(this: ChFiDS_StripeMap; i: int): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "FindFromIndex", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; i: int): ChFiDS_ListOfStripe {.noSideEffect,
    importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc findKey*(this: ChFiDS_StripeMap; i: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "FindKey", header: "ChFiDS_StripeMap.hxx".}
proc clear*(this: var ChFiDS_StripeMap) {.importcpp: "Clear",
                                      header: "ChFiDS_StripeMap.hxx".}