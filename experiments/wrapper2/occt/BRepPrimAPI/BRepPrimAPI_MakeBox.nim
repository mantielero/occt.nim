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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of BRepPrim_Wedge"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_Face"
type
  BRepPrimAPI_MakeBox* {.importcpp: "BRepPrimAPI_MakeBox",
                        header: "BRepPrimAPI_MakeBox.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                  ## !
                                                                                                  ## Default
                                                                                                  ## constructor


proc constructBRepPrimAPI_MakeBox*(): BRepPrimAPI_MakeBox {.constructor,
    importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(dx: float; dy: float; dz: float): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(p: Pnt; dx: float; dy: float; dz: float): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(p1: Pnt; p2: Pnt): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(axes: Ax2; dx: float; dy: float; dz: float): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BRepPrimAPI_MakeBox; theDX: float; theDY: float; theDZ: float) {.
    importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt: Pnt; theDX: float; theDY: float;
          theDZ: float) {.importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BRepPrimAPI_MakeBox; thePnt1: Pnt; thePnt2: Pnt) {.
    importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BRepPrimAPI_MakeBox; theAxes: Ax2; theDX: float; theDY: float;
          theDZ: float) {.importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc wedge*(this: var BRepPrimAPI_MakeBox): var BRepPrimWedge {.importcpp: "Wedge",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc build*(this: var BRepPrimAPI_MakeBox) {.importcpp: "Build",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc shell*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `topoDS_Shell`*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc solid*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `topoDS_Solid`*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc bottomFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.
    importcpp: "BottomFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc backFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "BackFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc frontFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "FrontFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc leftFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "LeftFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc rightFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "RightFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc topFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "TopFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
