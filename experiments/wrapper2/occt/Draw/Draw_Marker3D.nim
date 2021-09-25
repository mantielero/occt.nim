##  Created on: 1992-04-23
##  Created by: Modelistation
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of gp_Pnt"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Marker3D"
discard "forward decl of Draw_Marker3D"
type
  HandleDrawMarker3D* = Handle[DrawMarker3D]
  DrawMarker3D* {.importcpp: "Draw_Marker3D", header: "Draw_Marker3D.hxx", bycopy.} = object of DrawDrawable3D


proc constructDrawMarker3D*(p: Pnt; t: DrawMarkerShape; c: DrawColor; iSize: int = 5): DrawMarker3D {.
    constructor, importcpp: "Draw_Marker3D(@)", header: "Draw_Marker3D.hxx".}
proc constructDrawMarker3D*(p: Pnt; t: DrawMarkerShape; c: DrawColor; rSize: float): DrawMarker3D {.
    constructor, importcpp: "Draw_Marker3D(@)", header: "Draw_Marker3D.hxx".}
proc changePos*(this: var DrawMarker3D): var Pnt {.importcpp: "ChangePos",
    header: "Draw_Marker3D.hxx".}
proc drawOn*(this: DrawMarker3D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Marker3D.hxx".}
proc pickReject*(this: DrawMarker3D; x: float; y: float; prec: float): bool {.
    noSideEffect, importcpp: "PickReject", header: "Draw_Marker3D.hxx".}
type
  DrawMarker3DbaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "Draw_Marker3D::get_type_name(@)",
                            header: "Draw_Marker3D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Marker3D::get_type_descriptor(@)",
    header: "Draw_Marker3D.hxx".}
proc dynamicType*(this: DrawMarker3D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Marker3D.hxx".}
