import prsdim_types
import ../../tkmath/gp/gp_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkbrep/topods/topods_types
import ../selectmgr/selectmgr_types




##  Created on: 1998-01-22
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1998-1999 Matra Datavision
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





proc newPrsDimMaxRadiusDimension*(aShape: TopoDS_Shape; aVal: cfloat;
                                 aText: TCollectionExtendedString): PrsDimMaxRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_MaxRadiusDimension(@)", header: "PrsDim_MaxRadiusDimension.hxx".}
proc newPrsDimMaxRadiusDimension*(aShape: TopoDS_Shape; aVal: cfloat;
                                 aText: TCollectionExtendedString; aPosition: PntObj;
                                 aSymbolPrs: DsgPrsArrowSide;
                                 anArrowSize: cfloat = 0.0): PrsDimMaxRadiusDimension {.
    cdecl, constructor, importcpp: "PrsDim_MaxRadiusDimension(@)", header: "PrsDim_MaxRadiusDimension.hxx".}


