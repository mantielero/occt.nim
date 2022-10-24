import ais_types

##  Created on: 2014-04-24
##  Created by: Kirill Gavrilov
##  Copyright (c) 2014 OPEN CASCADE SAS
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

discard "forward decl of StdSelect_BRepOwner"


proc newAIS_ColoredShape*(theShape: TopoDS_Shape): AIS_ColoredShape {.cdecl,
    constructor, importcpp: "AIS_ColoredShape(@)", header: "AIS_ColoredShape.hxx".}
proc newAIS_ColoredShape*(theShape: Handle[AIS_Shape]): AIS_ColoredShape {.cdecl,
    constructor, importcpp: "AIS_ColoredShape(@)", header: "AIS_ColoredShape.hxx".}
proc customAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape): Handle[
    AIS_ColoredDrawer] {.cdecl, importcpp: "CustomAspects", header: "AIS_ColoredShape.hxx".}
proc clearCustomAspects*(this: var AIS_ColoredShape) {.cdecl,
    importcpp: "ClearCustomAspects", header: "AIS_ColoredShape.hxx".}
proc unsetCustomAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                        theToUnregister: bool = false) {.cdecl,
    importcpp: "UnsetCustomAspects", header: "AIS_ColoredShape.hxx".}
proc setCustomColor*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theColor: QuantityColor) {.cdecl, importcpp: "SetCustomColor",
    header: "AIS_ColoredShape.hxx".}
proc setCustomTransparency*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                           theTransparency: cfloat) {.cdecl,
    importcpp: "SetCustomTransparency", header: "AIS_ColoredShape.hxx".}
proc setCustomWidth*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theLineWidth: cfloat) {.cdecl, importcpp: "SetCustomWidth",
    header: "AIS_ColoredShape.hxx".}
proc customAspectsMap*(this: AIS_ColoredShape): AIS_DataMapOfShapeDrawer {.
    noSideEffect, cdecl, importcpp: "CustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc changeCustomAspectsMap*(this: var AIS_ColoredShape): var AIS_DataMapOfShapeDrawer {.
    cdecl, importcpp: "ChangeCustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc setColor*(this: var AIS_ColoredShape; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_ColoredShape.hxx".}
proc setWidth*(this: var AIS_ColoredShape; theLineWidth: cfloat) {.cdecl,
    importcpp: "SetWidth", header: "AIS_ColoredShape.hxx".}
proc setTransparency*(this: var AIS_ColoredShape; theValue: cfloat) {.cdecl,
    importcpp: "SetTransparency", header: "AIS_ColoredShape.hxx".}
proc setMaterial*(this: var AIS_ColoredShape; theAspect: Graphic3dMaterialAspect) {.
    cdecl, importcpp: "SetMaterial", header: "AIS_ColoredShape.hxx".}
proc unsetTransparency*(this: var AIS_ColoredShape) {.cdecl,
    importcpp: "UnsetTransparency", header: "AIS_ColoredShape.hxx".}
proc unsetWidth*(this: var AIS_ColoredShape) {.cdecl, importcpp: "UnsetWidth",
    header: "AIS_ColoredShape.hxx".}

