import ../gp/gp_types
import brepprimapi_types
import ../brepprim/brepprim_types




##  Created on: 1993-07-21
##  Created by: Remi LEQUETTE
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



proc torus*(r1: cfloat; r2: cfloat): BRepPrimAPI_MakeTorus {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(r1: cfloat; r2: cfloat; angle: cfloat): BRepPrimAPI_MakeTorus {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(r1: cfloat; r2: cfloat; angle1: cfloat; angle2: cfloat): BRepPrimAPI_MakeTorus {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(r1: cfloat; r2: cfloat; angle1: cfloat; angle2: cfloat;
                              angle: cfloat): BRepPrimAPI_MakeTorus {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(axes: Ax2Obj; r1: cfloat; r2: cfloat): BRepPrimAPI_MakeTorus {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(axes: Ax2Obj; r1: cfloat; r2: cfloat; angle: cfloat): BRepPrimAPI_MakeTorus {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(axes: Ax2Obj; r1: cfloat; r2: cfloat; angle1: cfloat;
                              angle2: cfloat): BRepPrimAPI_MakeTorus {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(axes: Ax2Obj; r1: cfloat; r2: cfloat; angle1: cfloat;
                              angle2: cfloat; angle: cfloat): BRepPrimAPI_MakeTorus {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeTorus(@)", header: "BRepPrimAPI_MakeTorus.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeTorus): pointer {.cdecl, importcpp: "OneAxis",
    header: "BRepPrimAPI_MakeTorus.hxx".}
proc torus*(this: var BRepPrimAPI_MakeTorus): var BRepPrimTorus {.cdecl,
    importcpp: "Torus", header: "BRepPrimAPI_MakeTorus.hxx".}


