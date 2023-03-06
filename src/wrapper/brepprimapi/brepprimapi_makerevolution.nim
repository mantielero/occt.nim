import ../gp/gp_types
import brepprimapi_types
import ../standard/standard_types
import ../geom/geom_types
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



proc revolution*(meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(meridian: Handle[GeomCurve]; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(meridian: Handle[GeomCurve]; vMin: cfloat;
                                   vMax: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(meridian: Handle[GeomCurve]; vMin: cfloat;
                                   vMax: cfloat; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(axes: gp_Ax2; meridian: Handle[GeomCurve]): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(axes: gp_Ax2; meridian: Handle[GeomCurve];
                                   angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(axes: gp_Ax2; meridian: Handle[GeomCurve];
                                   vMin: cfloat; vMax: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(axes: gp_Ax2; meridian: Handle[GeomCurve];
                                   vMin: cfloat; vMax: cfloat; angle: cfloat): BRepPrimAPI_MakeRevolution {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeRevolution(@)", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc oneAxis*(this: var BRepPrimAPI_MakeRevolution): pointer {.cdecl,
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeRevolution.hxx".}
proc revolution*(this: var BRepPrimAPI_MakeRevolution): var BRepPrimRevolution {.
    cdecl, importcpp: "Revolution", header: "BRepPrimAPI_MakeRevolution.hxx".}


