##  Created on: 1994-04-18
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Draw_Color"
discard "forward decl of Draw_Display"
discard "forward decl of Draw_Marker2D"
discard "forward decl of Draw_Marker2D"
type
  HandleDrawMarker2D* = Handle[DrawMarker2D]
  DrawMarker2D* {.importcpp: "Draw_Marker2D", header: "Draw_Marker2D.hxx", bycopy.} = object of DrawDrawable2D


proc constructDrawMarker2D*(p: GpPnt2d; t: DrawMarkerShape; c: DrawColor;
                           size: StandardInteger = 5): DrawMarker2D {.constructor,
    importcpp: "Draw_Marker2D(@)", header: "Draw_Marker2D.hxx".}
proc constructDrawMarker2D*(p: GpPnt2d; t: DrawMarkerShape; c: DrawColor;
                           rSize: StandardReal): DrawMarker2D {.constructor,
    importcpp: "Draw_Marker2D(@)", header: "Draw_Marker2D.hxx".}
proc changePos*(this: var DrawMarker2D): var GpPnt2d {.importcpp: "ChangePos",
    header: "Draw_Marker2D.hxx".}
proc drawOn*(this: DrawMarker2D; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "Draw_Marker2D.hxx".}
proc pickReject*(this: DrawMarker2D; x: StandardReal; y: StandardReal;
                prec: StandardReal): StandardBoolean {.noSideEffect,
    importcpp: "PickReject", header: "Draw_Marker2D.hxx".}
type
  DrawMarker2DbaseType* = DrawDrawable2D

proc getTypeName*(): cstring {.importcpp: "Draw_Marker2D::get_type_name(@)",
                            header: "Draw_Marker2D.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Draw_Marker2D::get_type_descriptor(@)",
    header: "Draw_Marker2D.hxx".}
proc dynamicType*(this: DrawMarker2D): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Draw_Marker2D.hxx".}

