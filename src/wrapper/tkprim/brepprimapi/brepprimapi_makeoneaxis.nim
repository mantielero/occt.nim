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

discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
type
  BRepPrimAPI_MakeOneAxis* {.importcpp: "BRepPrimAPI_MakeOneAxis",
                            header: "BRepPrimAPI_MakeOneAxis.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                          ## !
                                                                                                          ## The
                                                                                                          ## inherited
                                                                                                          ## commands
                                                                                                          ## should
                                                                                                          ## provide
                                                                                                          ## the
                                                                                                          ## algorithm.
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Returned
                                                                                                          ## as
                                                                                                          ## a
                                                                                                          ## pointer.


proc oneAxis*(this: var BRepPrimAPI_MakeOneAxis): pointer {.cdecl,
    importcpp: "OneAxis", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc build*(this: var BRepPrimAPI_MakeOneAxis) {.cdecl, importcpp: "Build",
    header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc face*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Face {.cdecl, importcpp: "Face",
    header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Face`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Face {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Face", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc shell*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.cdecl,
    importcpp: "Shell", header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Shell", header: "BRepPrimAPI_MakeOneAxis.hxx".}
proc solid*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.cdecl,
    importcpp: "Solid", header: "BRepPrimAPI_MakeOneAxis.hxx".}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeOneAxis): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeOneAxis::operator TopoDS_Solid", header: "BRepPrimAPI_MakeOneAxis.hxx".}