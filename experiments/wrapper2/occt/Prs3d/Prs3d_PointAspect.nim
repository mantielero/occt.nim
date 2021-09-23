##  Created on: 1993-04-26
##  Created by: Jean-Louis Frenkel
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
  Prs3d_BasicAspect, ../Graphic3d/Graphic3d_AspectMarker3d,
  ../Graphic3d/Graphic3d_MarkerImage

## ! This  class  defines  attributes for the points
## ! The points are drawn using markers, whose size does not depend on
## ! the zoom value of the views.

type
  Prs3d_PointAspect* {.importcpp: "Prs3d_PointAspect",
                      header: "Prs3d_PointAspect.hxx", bycopy.} = object of Prs3d_BasicAspect

  Prs3d_PointAspectbase_type* = Prs3d_BasicAspect

proc get_type_name*(): cstring {.importcpp: "Prs3d_PointAspect::get_type_name(@)",
                              header: "Prs3d_PointAspect.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Prs3d_PointAspect::get_type_descriptor(@)",
    header: "Prs3d_PointAspect.hxx".}
proc DynamicType*(this: Prs3d_PointAspect): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Prs3d_PointAspect.hxx".}
proc constructPrs3d_PointAspect*(theType: Aspect_TypeOfMarker;
                                theColor: Quantity_Color; theScale: Standard_Real): Prs3d_PointAspect {.
    constructor, importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc constructPrs3d_PointAspect*(theColor: Quantity_Color;
                                theWidth: Standard_Integer;
                                theHeight: Standard_Integer;
                                theTexture: handle[TColStd_HArray1OfByte]): Prs3d_PointAspect {.
    constructor, importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc constructPrs3d_PointAspect*(theAspect: handle[Graphic3d_AspectMarker3d]): Prs3d_PointAspect {.
    constructor, importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc SetColor*(this: var Prs3d_PointAspect; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Prs3d_PointAspect.hxx".}
proc SetTypeOfMarker*(this: var Prs3d_PointAspect; theType: Aspect_TypeOfMarker) {.
    importcpp: "SetTypeOfMarker", header: "Prs3d_PointAspect.hxx".}
proc SetScale*(this: var Prs3d_PointAspect; theScale: Standard_Real) {.
    importcpp: "SetScale", header: "Prs3d_PointAspect.hxx".}
proc Aspect*(this: Prs3d_PointAspect): handle[Graphic3d_AspectMarker3d] {.
    noSideEffect, importcpp: "Aspect", header: "Prs3d_PointAspect.hxx".}
proc SetAspect*(this: var Prs3d_PointAspect;
               theAspect: handle[Graphic3d_AspectMarker3d]) {.
    importcpp: "SetAspect", header: "Prs3d_PointAspect.hxx".}
proc GetTextureSize*(this: Prs3d_PointAspect; theWidth: var Standard_Integer;
                    theHeight: var Standard_Integer) {.noSideEffect,
    importcpp: "GetTextureSize", header: "Prs3d_PointAspect.hxx".}
proc GetTexture*(this: Prs3d_PointAspect): handle[Graphic3d_MarkerImage] {.
    noSideEffect, importcpp: "GetTexture", header: "Prs3d_PointAspect.hxx".}
proc DumpJson*(this: Prs3d_PointAspect; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Prs3d_PointAspect.hxx".}
discard "forward decl of Prs3d_PointAspect"
type
  Handle_Prs3d_PointAspect* = handle[Prs3d_PointAspect]
