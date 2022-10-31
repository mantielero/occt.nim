import prsdim_types
import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkbrep/topods/topods_types



##  Created on: 1996-12-05
##  Created by: Odile Olivier
##  Copyright (c) 1996-1999 Matra Datavision
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





proc newPrsDimChamf3dDimension*(aFShape: TopoDS_Shape; aVal: cfloat;
                               aText: TCollectionExtendedString): PrsDimChamf3dDimension {.
    cdecl, constructor, importcpp: "PrsDim_Chamf3dDimension(@)", header: "PrsDim_Chamf3dDimension.hxx".}
proc newPrsDimChamf3dDimension*(aFShape: TopoDS_Shape; aVal: cfloat;
                               aText: TCollectionExtendedString; aPosition: PntObj;
                               aSymbolPrs: DsgPrsArrowSide;
                               anArrowSize: cfloat = 0.0): PrsDimChamf3dDimension {.
    cdecl, constructor, importcpp: "PrsDim_Chamf3dDimension(@)", header: "PrsDim_Chamf3dDimension.hxx".}
proc kindOfDimension*(this: PrsDimChamf3dDimension): PrsDimKindOfDimension {.
    noSideEffect, cdecl, importcpp: "KindOfDimension", header: "PrsDim_Chamf3dDimension.hxx".}
proc isMovable*(this: PrsDimChamf3dDimension): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_Chamf3dDimension.hxx".}

