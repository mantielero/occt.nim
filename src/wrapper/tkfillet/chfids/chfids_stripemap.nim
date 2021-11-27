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


proc newChFiDS_StripeMap*(): ChFiDS_StripeMap {.cdecl, constructor,
    importcpp: "ChFiDS_StripeMap(@)", header: "ChFiDS_StripeMap.hxx".}
proc add*(this: var ChFiDS_StripeMap; v: TopoDS_Vertex; f: Handle[ChFiDS_Stripe]) {.
    cdecl, importcpp: "Add", header: "ChFiDS_StripeMap.hxx".}
proc extent*(this: ChFiDS_StripeMap): cint {.noSideEffect, cdecl, importcpp: "Extent",
    header: "ChFiDS_StripeMap.hxx".}
proc findFromKey*(this: ChFiDS_StripeMap; v: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, cdecl, importcpp: "FindFromKey", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; v: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, cdecl, importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc findFromIndex*(this: ChFiDS_StripeMap; i: cint): ChFiDS_ListOfStripe {.
    noSideEffect, cdecl, importcpp: "FindFromIndex", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; i: cint): ChFiDS_ListOfStripe {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc findKey*(this: ChFiDS_StripeMap; i: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FindKey", header: "ChFiDS_StripeMap.hxx".}
proc clear*(this: var ChFiDS_StripeMap) {.cdecl, importcpp: "Clear", header: "ChFiDS_StripeMap.hxx".}