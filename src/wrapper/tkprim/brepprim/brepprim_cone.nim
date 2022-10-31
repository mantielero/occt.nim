import ../../tkmath/gp/gp_types
import brepprim_types
import ../../tkbrep/topods/topods_types





##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
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



proc newBRepPrimCone*(angle: cfloat; position: Ax2Obj; height: cfloat; radius: cfloat = 0): BRepPrimCone {.
    cdecl, constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(angle: cfloat): BRepPrimCone {.cdecl, constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(angle: cfloat; apex: PntObj): BRepPrimCone {.cdecl, constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(angle: cfloat; axes: Ax2Obj): BRepPrimCone {.cdecl, constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(r1: cfloat; r2: cfloat; h: cfloat): BRepPrimCone {.cdecl,
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(center: PntObj; r1: cfloat; r2: cfloat; h: cfloat): BRepPrimCone {.
    cdecl, constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc newBRepPrimCone*(axes: Ax2Obj; r1: cfloat; r2: cfloat; h: cfloat): BRepPrimCone {.cdecl,
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimCone): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Cone.hxx".}


