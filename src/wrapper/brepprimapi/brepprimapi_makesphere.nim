import ../gp/gp_types
import brepprimapi_types
import ../brepprim/brepprim_types




##  Created on: 1993-07-22
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



proc sphere*(r: cfloat): BRepPrimAPI_MakeSphere {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(r: cfloat; angle: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(r: cfloat; angle1: cfloat; angle2: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(r: cfloat; angle1: cfloat; angle2: cfloat;
                               angle3: cfloat): BRepPrimAPI_MakeSphere {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(center: gp_Pnt; r: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(center: gp_Pnt; r: cfloat; angle: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(center: gp_Pnt; r: cfloat; angle1: cfloat; angle2: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(center: gp_Pnt; r: cfloat; angle1: cfloat; angle2: cfloat;
                               angle3: cfloat): BRepPrimAPI_MakeSphere {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(axis: gp_Ax2; r: cfloat): BRepPrimAPI_MakeSphere {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(axis: gp_Ax2; r: cfloat; angle: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(axis: gp_Ax2; r: cfloat; angle1: cfloat; angle2: cfloat): BRepPrimAPI_MakeSphere {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(axis: gp_Ax2; r: cfloat; angle1: cfloat; angle2: cfloat;
                               angle3: cfloat): BRepPrimAPI_MakeSphere {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeSphere(@)", header: "BRepPrimAPI_MakeSphere.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeSphere): pointer {.cdecl,
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeSphere.hxx".}
proc sphere*(this: var BRepPrimAPI_MakeSphere): var BRepPrimSphere {.cdecl,
    importcpp: "Sphere", header: "BRepPrimAPI_MakeSphere.hxx".}


