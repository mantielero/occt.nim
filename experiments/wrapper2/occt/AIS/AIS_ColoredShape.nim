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
type
  AIS_ColoredShape* {.importcpp: "AIS_ColoredShape",
                     header: "AIS_ColoredShape.hxx", bycopy.} = object of AIS_Shape ## !
                                                                             ## Default
                                                                             ## constructor
                                                                             ## !
                                                                             ## @name
                                                                             ## sub-shape
                                                                             ## aspects
                                                                             ## !
                                                                             ## Customize
                                                                             ## properties of
                                                                             ## specified
                                                                             ## sub-shape.
                                                                             ## ! The
                                                                             ## shape
                                                                             ## will be
                                                                             ## stored in the map but
                                                                             ## ignored, if it is not
                                                                             ## sub-shape of
                                                                             ## main
                                                                             ## Shape!
                                                                             ## !
                                                                             ## This
                                                                             ## method can be
                                                                             ## used to
                                                                             ## mark
                                                                             ## sub-shapes
                                                                             ## with
                                                                             ## customizable
                                                                             ## properties.
                                                                             ## !
                                                                             ## @name
                                                                             ## global
                                                                             ## aspects
                                                                             ## !
                                                                             ## Setup
                                                                             ## color of
                                                                             ## entire
                                                                             ## shape.
                                                                             ## !
                                                                             ## Removes the
                                                                             ## setting for
                                                                             ## transparency in the
                                                                             ## reconstructed
                                                                             ## compound
                                                                             ## shape.
                                                                             ## !
                                                                             ## @name
                                                                             ## override
                                                                             ## presentation
                                                                             ## computation
                                                                             ## !
                                                                             ## Compute
                                                                             ## presentation
                                                                             ## considering
                                                                             ## sub-shape
                                                                             ## color
                                                                             ## map.
                                                                             ## !
                                                                             ## Recursive
                                                                             ## function to map
                                                                             ## shapes.
                                                                             ## !
                                                                             ## @param
                                                                             ## theParentDrawer   the
                                                                             ## drawer to be
                                                                             ## used for
                                                                             ## undetailed
                                                                             ## shapes
                                                                             ## (default
                                                                             ## colors)
                                                                             ## !
                                                                             ## @param
                                                                             ## theShapeToParse   the
                                                                             ## subshape to be
                                                                             ## recursively
                                                                             ## parsed
                                                                             ## !
                                                                             ## @param
                                                                             ## theShapeDrawerMap
                                                                             ## shapes map
                                                                             ## Subshape (in the
                                                                             ## base
                                                                             ## shape) ->
                                                                             ## Drawer
                                                                             ## !
                                                                             ## @param
                                                                             ## theParentType     the
                                                                             ## parent
                                                                             ## subshape
                                                                             ## type
                                                                             ## !
                                                                             ## @param
                                                                             ## theIsParentClosed
                                                                             ## flag
                                                                             ## indicating
                                                                             ## that
                                                                             ## specified
                                                                             ## shape is
                                                                             ## part of
                                                                             ## closed
                                                                             ## Solid
                                                                             ## !
                                                                             ## @param
                                                                             ## theDrawerOpenedShapePerType the
                                                                             ## array of
                                                                             ## shape
                                                                             ## types to
                                                                             ## fill
                                                                             ## !
                                                                             ## @param
                                                                             ## theDrawerClosedFaces        the map for
                                                                             ## closed
                                                                             ## faces
                                                                             ## !
                                                                             ## Extract
                                                                             ## myShapeColors map
                                                                             ## (KeyshapeColored ->
                                                                             ## Color) to
                                                                             ## subshapes map
                                                                             ## (Subshape ->
                                                                             ## Color).
                                                                             ## !
                                                                             ## This
                                                                             ## needed
                                                                             ## when
                                                                             ## colored
                                                                             ## shape is not
                                                                             ## part of
                                                                             ## BaseShape
                                                                             ## (but
                                                                             ## subshapes
                                                                             ## are) and
                                                                             ## actually
                                                                             ## container for
                                                                             ## subshapes.


proc constructAIS_ColoredShape*(theShape: TopoDS_Shape): AIS_ColoredShape {.
    constructor, importcpp: "AIS_ColoredShape(@)", header: "AIS_ColoredShape.hxx".}
proc constructAIS_ColoredShape*(theShape: Handle[AIS_Shape]): AIS_ColoredShape {.
    constructor, importcpp: "AIS_ColoredShape(@)", header: "AIS_ColoredShape.hxx".}
proc customAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape): Handle[
    AIS_ColoredDrawer] {.importcpp: "CustomAspects", header: "AIS_ColoredShape.hxx".}
proc clearCustomAspects*(this: var AIS_ColoredShape) {.
    importcpp: "ClearCustomAspects", header: "AIS_ColoredShape.hxx".}
proc unsetCustomAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                        theToUnregister: bool = false) {.
    importcpp: "UnsetCustomAspects", header: "AIS_ColoredShape.hxx".}
proc setCustomColor*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theColor: QuantityColor) {.importcpp: "SetCustomColor",
    header: "AIS_ColoredShape.hxx".}
proc setCustomTransparency*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                           theTransparency: float) {.
    importcpp: "SetCustomTransparency", header: "AIS_ColoredShape.hxx".}
proc setCustomWidth*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theLineWidth: float) {.importcpp: "SetCustomWidth",
    header: "AIS_ColoredShape.hxx".}
proc customAspectsMap*(this: AIS_ColoredShape): AIS_DataMapOfShapeDrawer {.
    noSideEffect, importcpp: "CustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc changeCustomAspectsMap*(this: var AIS_ColoredShape): var AIS_DataMapOfShapeDrawer {.
    importcpp: "ChangeCustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc setColor*(this: var AIS_ColoredShape; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_ColoredShape.hxx".}
proc setWidth*(this: var AIS_ColoredShape; theLineWidth: float) {.
    importcpp: "SetWidth", header: "AIS_ColoredShape.hxx".}
proc setTransparency*(this: var AIS_ColoredShape; theValue: float) {.
    importcpp: "SetTransparency", header: "AIS_ColoredShape.hxx".}
proc setMaterial*(this: var AIS_ColoredShape; theAspect: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_ColoredShape.hxx".}
proc unsetTransparency*(this: var AIS_ColoredShape) {.
    importcpp: "UnsetTransparency", header: "AIS_ColoredShape.hxx".}
proc unsetWidth*(this: var AIS_ColoredShape) {.importcpp: "UnsetWidth",
    header: "AIS_ColoredShape.hxx".}
type
  AIS_ColoredShapebaseType* = AIS_Shape

proc getTypeName*(): cstring {.importcpp: "AIS_ColoredShape::get_type_name(@)",
                            header: "AIS_ColoredShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_ColoredShape::get_type_descriptor(@)",
    header: "AIS_ColoredShape.hxx".}
proc dynamicType*(this: AIS_ColoredShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColoredShape.hxx".}
discard "forward decl of AIS_ColoredShape"
type
  HandleAIS_ColoredShape* = Handle[AIS_ColoredShape]

