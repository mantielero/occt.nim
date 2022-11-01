import ../../tkmath/gp/gp_types
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



proc cone*(r1: cfloat; r2: cfloat; h: cfloat): BRepPrimAPI_MakeCone {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCone(@)", header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(r1: cfloat; r2: cfloat; h: cfloat; angle: cfloat): BRepPrimAPI_MakeCone {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCone(@)", header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(axes: Ax2Obj; r1: cfloat; r2: cfloat; h: cfloat): BRepPrimAPI_MakeCone {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCone(@)", header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(axes: Ax2Obj; r1: cfloat; r2: cfloat; h: cfloat; angle: cfloat): BRepPrimAPI_MakeCone {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCone(@)", header: "BRepPrimAPI_MakeCone.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeCone): pointer {.cdecl, importcpp: "OneAxis",
    header: "BRepPrimAPI_MakeCone.hxx".}
proc cone*(this: var BRepPrimAPI_MakeCone): var BRepPrimCone {.cdecl,
    importcpp: "Cone", header: "BRepPrimAPI_MakeCone.hxx".}


