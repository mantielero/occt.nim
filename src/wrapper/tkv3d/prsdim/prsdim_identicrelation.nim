import prsdim_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types



##  Created on: 1997-03-03
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





proc newPrsDimIdenticRelation*(firstShape: TopoDS_Shape; secondShape: TopoDS_Shape;
                              aPlane: Handle[GeomPlane]): PrsDimIdenticRelation {.
    cdecl, constructor, importcpp: "PrsDim_IdenticRelation(@)", header: "PrsDim_IdenticRelation.hxx".}
proc hasUsers*(this: PrsDimIdenticRelation): bool {.noSideEffect, cdecl,
    importcpp: "HasUsers", header: "PrsDim_IdenticRelation.hxx".}
proc users*(this: PrsDimIdenticRelation): TColStdListOfTransient {.noSideEffect,
    cdecl, importcpp: "Users", header: "PrsDim_IdenticRelation.hxx".}
proc addUser*(this: var PrsDimIdenticRelation; theUser: Handle[StandardTransient]) {.
    cdecl, importcpp: "AddUser", header: "PrsDim_IdenticRelation.hxx".}
proc clearUsers*(this: var PrsDimIdenticRelation) {.cdecl, importcpp: "ClearUsers",
    header: "PrsDim_IdenticRelation.hxx".}
proc isMovable*(this: PrsDimIdenticRelation): bool {.noSideEffect, cdecl,
    importcpp: "IsMovable", header: "PrsDim_IdenticRelation.hxx".}

