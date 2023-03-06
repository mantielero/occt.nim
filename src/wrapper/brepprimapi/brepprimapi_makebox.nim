import ../gp/gp_types
import brepprimapi_types
import ../topods/topods_types
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


# Constructors
proc box*(): BRepPrimAPI_MakeBox {.cdecl, constructor,
    importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

proc box*(dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

proc box*(p: PntObj; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

proc box*(p1: PntObj; p2: PntObj): BRepPrimAPI_MakeBox {.cdecl,
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

proc box*(axes: Ax2Obj; dx: cfloat; dy: cfloat; dz: cfloat): BRepPrimAPI_MakeBox {.
    cdecl, constructor, importcpp: "BRepPrimAPI_MakeBox(@)", header: "BRepPrimAPI_MakeBox.hxx".}

# Init
proc init*(this: var BRepPrimAPI_MakeBox; theDX: cfloat; theDY: cfloat; theDZ: cfloat) {.
    cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}

proc init*(this: var BRepPrimAPI_MakeBox; thePnt: PntObj; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}

proc init*(this: var BRepPrimAPI_MakeBox; thePnt1: PntObj; thePnt2: PntObj) {.cdecl,
    importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}

proc init*(this: var BRepPrimAPI_MakeBox; theAxes: Ax2Obj; theDX: cfloat; theDY: cfloat;
          theDZ: cfloat) {.cdecl, importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}

# Other
proc wedge*(this: var BRepPrimAPI_MakeBox): var BRepPrimWedge {.cdecl,
    importcpp: "Wedge", header: "BRepPrimAPI_MakeBox.hxx".}

proc build*(this: var BRepPrimAPI_MakeBox) {.cdecl, importcpp: "Build", header: "BRepPrimAPI_MakeBox.hxx".}

proc shell*(this: BRepPrimAPI_MakeBox): TopoDS_Shell {.cdecl, importcpp: "Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}

converter `topoDS_Shell`*(this: BRepPrimAPI_MakeBox): TopoDS_Shell {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell", header: "BRepPrimAPI_MakeBox.hxx".}

proc solid*(this: BRepPrimAPI_MakeBox): TopoDS_Solid {.cdecl, importcpp: "Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}

converter `topoDS_Solid`*(this: BRepPrimAPI_MakeBox): TopoDS_Solid {.cdecl,
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid", header: "BRepPrimAPI_MakeBox.hxx".}

# Get faces
proc bottomFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "BottomFace", header: "BRepPrimAPI_MakeBox.hxx".}

proc backFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "BackFace", header: "BRepPrimAPI_MakeBox.hxx".}

proc frontFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "FrontFace", header: "BRepPrimAPI_MakeBox.hxx".}

proc leftFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "LeftFace", header: "BRepPrimAPI_MakeBox.hxx".}

proc rightFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "RightFace", header: "BRepPrimAPI_MakeBox.hxx".}

proc topFace*(this: BRepPrimAPI_MakeBox): TopoDS_Face {.cdecl,
    importcpp: "TopFace", header: "BRepPrimAPI_MakeBox.hxx".}


