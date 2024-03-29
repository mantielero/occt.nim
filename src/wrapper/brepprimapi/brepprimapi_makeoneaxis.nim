import brepprimapi_types
import ../topods/topods_types





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



proc oneAxis*(this: BRepPrimAPI_MakeOneAxis): pointer {.cdecl,
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc build*(this: var BRepPrimAPI_MakeOneAxis) {.cdecl, importcpp: "Build",
    header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc face*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Face {.cdecl, importcpp: "Face",
    header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Face`*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Face {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Face", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc shell*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.cdecl,
    importcpp: "Shell", header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Shell`*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Shell", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc solid*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.cdecl,
    importcpp: "Solid", header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Solid`*(this: BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Solid", header: "BRepPrimAPI_MakeOneAxis.hxx".}


