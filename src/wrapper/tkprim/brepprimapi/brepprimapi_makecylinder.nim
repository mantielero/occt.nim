import ../../tkmath/gp/gp_types
import brepprimapi_types



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



proc cylinder*(r: cfloat; h: cfloat): BRepPrimAPI_MakeCylinder {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc cylinder*(r: cfloat; h: cfloat; angle: cfloat): BRepPrimAPI_MakeCylinder {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc cylinder*(axes: Ax2Obj; r: cfloat; h: cfloat): BRepPrimAPI_MakeCylinder {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc cylinder*(axes: Ax2Obj; r: cfloat; h: cfloat; angle: cfloat): BRepPrimAPI_MakeCylinder {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeCylinder(@)", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeCylinder): pointer {.cdecl,
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeCylinder.hxx".}
proc cylinder*(this: var BRepPrimAPI_MakeCylinder): var BRepPrimCylinder {.cdecl,
    importcpp: "Cylinder", header: "BRepPrimAPI_MakeCylinder.hxx".}

