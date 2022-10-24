import prs3d_types

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

## ! This  class  defines  attributes for the points
## ! The points are drawn using markers, whose size does not depend on
## ! the zoom value of the views.



proc newPrs3dPointAspect*(theType: AspectTypeOfMarker; theColor: QuantityColor;
                         theScale: cfloat): Prs3dPointAspect {.cdecl, constructor,
    importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc newPrs3dPointAspect*(theColor: QuantityColor; theWidth: cint; theHeight: cint;
                         theTexture: Handle[TColStdHArray1OfByte]): Prs3dPointAspect {.
    cdecl, constructor, importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc newPrs3dPointAspect*(theAspect: Handle[Graphic3dAspectMarker3d]): Prs3dPointAspect {.
    cdecl, constructor, importcpp: "Prs3d_PointAspect(@)", header: "Prs3d_PointAspect.hxx".}
proc setColor*(this: var Prs3dPointAspect; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "Prs3d_PointAspect.hxx".}
proc setTypeOfMarker*(this: var Prs3dPointAspect; theType: AspectTypeOfMarker) {.
    cdecl, importcpp: "SetTypeOfMarker", header: "Prs3d_PointAspect.hxx".}
proc setScale*(this: var Prs3dPointAspect; theScale: cfloat) {.cdecl,
    importcpp: "SetScale", header: "Prs3d_PointAspect.hxx".}
proc aspect*(this: Prs3dPointAspect): Handle[Graphic3dAspectMarker3d] {.
    noSideEffect, cdecl, importcpp: "Aspect", header: "Prs3d_PointAspect.hxx".}
proc setAspect*(this: var Prs3dPointAspect;
               theAspect: Handle[Graphic3dAspectMarker3d]) {.cdecl,
    importcpp: "SetAspect", header: "Prs3d_PointAspect.hxx".}
proc getTextureSize*(this: Prs3dPointAspect; theWidth: var cint; theHeight: var cint) {.
    noSideEffect, cdecl, importcpp: "GetTextureSize", header: "Prs3d_PointAspect.hxx".}
proc getTexture*(this: Prs3dPointAspect): Handle[Graphic3dMarkerImage] {.
    noSideEffect, cdecl, importcpp: "GetTexture", header: "Prs3d_PointAspect.hxx".}
proc dumpJson*(this: Prs3dPointAspect; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_PointAspect.hxx".}

