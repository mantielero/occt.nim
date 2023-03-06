import prsdim_types
import ../gp/gp_types
import ../tcollection/tcollection_types
import ../topods/topods_types





##  Created on: 1997-03-04
##  Created by: Jean-Pierre COMBE
##  Copyright (c) 1997-1999 Matra Datavision
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





proc newPrsDimOffsetDimension*(fistShape: TopoDS_Shape; secondShape: TopoDS_Shape;
                              aVal: cfloat; aText: TCollectionExtendedString): PrsDimOffsetDimension {.
    cdecl, constructor, importcpp: "PrsDim_OffsetDimension(@)", header: "PrsDim_OffsetDimension.hxx".}
proc kindOfDimension*(this: PrsDimOffsetDimension): PrsDimKindOfDimension {.
    noSideEffect, cdecl, importcpp: "KindOfDimension", header: "PrsDim_OffsetDimension.hxx".}
proc isMovable*(this: PrsDimOffsetDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_OffsetDimension.hxx".}
proc setRelativePos*(this: var PrsDimOffsetDimension; aTrsf: gp_Trsf) {.cdecl,
    importcpp: "SetRelativePos", header: "PrsDim_OffsetDimension.hxx".}


