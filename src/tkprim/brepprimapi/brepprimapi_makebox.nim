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

import brepprimapi_types, tkmath/gp/gp_types

proc box*(): BoxObj {.cdecl, constructor,
    importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}
proc box*(dx: cfloat; dy: cfloat; dz: cfloat): BoxObj {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}
proc box*(p: PntObj; dx: cfloat; dy: cfloat; dz: cfloat): BoxObj {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}
proc box*(p1: PntObj; p2: PntObj): BoxObj {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}
proc box*(axes: Ax2Obj; dx: cfloat; dy: cfloat; dz: cfloat): BoxObj {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

proc init*(this: var BoxObj; theDX: cfloat; theDY: cfloat; theDZ: cfloat) {.
    cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BoxObj; thePnt: PntObj; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BoxObj; thePnt1: PntObj; thePnt2: PntObj) {.cdecl,
    importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc init*(this: var BoxObj; theAxes: Ax2Obj; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc wedge*(this: var BoxObj): var BRepPrimWedge {.cdecl,
    importcpp: "Wedge", header: "BRepPrimAPI_MakeBox.hxx".}
proc build*(this: var BoxObj) {.cdecl, importcpp: "Build", header: "BRepPrimAPI_MakeBox.hxx".}
proc shell*(this: var BoxObj): TopoDS_Shell {.cdecl, importcpp: "Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `topoDS_Shell`*(this: var BoxObj): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell", header: "BRepPrimAPI_MakeBox.hxx".}
proc solid*(this: var BoxObj): TopoDS_Solid {.cdecl, importcpp: "Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `topoDS_Solid`*(this: var BoxObj): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid", header: "BRepPrimAPI_MakeBox.hxx".}
proc bottomFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "BottomFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc backFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "BackFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc frontFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "FrontFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc leftFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "LeftFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc rightFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "RightFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc topFace*(this: var BoxObj): TopoDS_Face {.cdecl,
    importcpp: "TopFace", header: "BRepPrimAPI_MakeBox.hxx".}