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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ChFiDS_IndexedDataMapOfVertexListOfStripe,
  ../Standard/Standard_Integer, ChFiDS_ListOfStripe

discard "forward decl of TopoDS_Vertex"
discard "forward decl of ChFiDS_Stripe"
type
  ChFiDS_StripeMap* {.importcpp: "ChFiDS_StripeMap",
                     header: "ChFiDS_StripeMap.hxx", bycopy.} = object


proc constructChFiDS_StripeMap*(): ChFiDS_StripeMap {.constructor,
    importcpp: "ChFiDS_StripeMap(@)", header: "ChFiDS_StripeMap.hxx".}
proc Add*(this: var ChFiDS_StripeMap; V: TopoDS_Vertex; F: handle[ChFiDS_Stripe]) {.
    importcpp: "Add", header: "ChFiDS_StripeMap.hxx".}
proc Extent*(this: ChFiDS_StripeMap): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "ChFiDS_StripeMap.hxx".}
proc FindFromKey*(this: ChFiDS_StripeMap; V: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "FindFromKey", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; V: TopoDS_Vertex): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc FindFromIndex*(this: ChFiDS_StripeMap; I: Standard_Integer): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "FindFromIndex", header: "ChFiDS_StripeMap.hxx".}
proc `()`*(this: ChFiDS_StripeMap; I: Standard_Integer): ChFiDS_ListOfStripe {.
    noSideEffect, importcpp: "#(@)", header: "ChFiDS_StripeMap.hxx".}
proc FindKey*(this: ChFiDS_StripeMap; I: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FindKey", header: "ChFiDS_StripeMap.hxx".}
proc Clear*(this: var ChFiDS_StripeMap) {.importcpp: "Clear",
                                      header: "ChFiDS_StripeMap.hxx".}