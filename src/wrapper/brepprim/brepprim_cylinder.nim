import ../gp/gp_types
import brepprim_types
import ../topods/topods_types





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



proc newBRepPrimCylinder*(position: Ax2Obj; radius: cfloat; height: cfloat): BRepPrimCylinder {.
    cdecl, constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc newBRepPrimCylinder*(radius: cfloat): BRepPrimCylinder {.cdecl, constructor,
    importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc newBRepPrimCylinder*(center: gp_Pnt; radius: cfloat): BRepPrimCylinder {.cdecl,
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc newBRepPrimCylinder*(axes: Ax2Obj; radius: cfloat): BRepPrimCylinder {.cdecl,
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}

proc newBRepPrimCylinder*(r: cfloat; h: cfloat): BRepPrimCylinder {.cdecl, constructor,
    importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}

proc newBRepPrimCylinder*(center: gp_Pnt; r: cfloat; h: cfloat): BRepPrimCylinder {.cdecl,
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}

proc makeEmptyLateralFace*(this: BRepPrimCylinder): TopoDS_Face {.noSideEffect,
    cdecl, importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Cylinder.hxx".}


