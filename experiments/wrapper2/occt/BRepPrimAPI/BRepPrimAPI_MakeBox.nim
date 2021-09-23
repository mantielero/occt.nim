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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepPrim/BRepPrim_Wedge,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real

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
proc constructBRepPrimAPI_MakeBox*(dx: Standard_Real; dy: Standard_Real;
                                  dz: Standard_Real): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(P: gp_Pnt; dx: Standard_Real; dy: Standard_Real;
                                  dz: Standard_Real): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(P1: gp_Pnt; P2: gp_Pnt): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc constructBRepPrimAPI_MakeBox*(Axes: gp_Ax2; dx: Standard_Real;
                                  dy: Standard_Real; dz: Standard_Real): BRepPrimAPI_MakeBox {.
    constructor, importcpp: "BRepPrimAPI_MakeBox(@)",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Init*(this: var BRepPrimAPI_MakeBox; theDX: Standard_Real; theDY: Standard_Real;
          theDZ: Standard_Real) {.importcpp: "Init",
                                header: "BRepPrimAPI_MakeBox.hxx".}
proc Init*(this: var BRepPrimAPI_MakeBox; thePnt: gp_Pnt; theDX: Standard_Real;
          theDY: Standard_Real; theDZ: Standard_Real) {.importcpp: "Init",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Init*(this: var BRepPrimAPI_MakeBox; thePnt1: gp_Pnt; thePnt2: gp_Pnt) {.
    importcpp: "Init", header: "BRepPrimAPI_MakeBox.hxx".}
proc Init*(this: var BRepPrimAPI_MakeBox; theAxes: gp_Ax2; theDX: Standard_Real;
          theDY: Standard_Real; theDZ: Standard_Real) {.importcpp: "Init",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Wedge*(this: var BRepPrimAPI_MakeBox): var BRepPrim_Wedge {.importcpp: "Wedge",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Build*(this: var BRepPrimAPI_MakeBox) {.importcpp: "Build",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Shell*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.importcpp: "Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `TopoDS_Shell`*(this: var BRepPrimAPI_MakeBox): TopoDS_Shell {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Shell",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc Solid*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.importcpp: "Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}
converter `TopoDS_Solid`*(this: var BRepPrimAPI_MakeBox): TopoDS_Solid {.
    importcpp: "BRepPrimAPI_MakeBox::operator TopoDS_Solid",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc BottomFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.
    importcpp: "BottomFace", header: "BRepPrimAPI_MakeBox.hxx".}
proc BackFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "BackFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc FrontFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "FrontFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc LeftFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "LeftFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc RightFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "RightFace",
    header: "BRepPrimAPI_MakeBox.hxx".}
proc TopFace*(this: var BRepPrimAPI_MakeBox): TopoDS_Face {.importcpp: "TopFace",
    header: "BRepPrimAPI_MakeBox.hxx".}