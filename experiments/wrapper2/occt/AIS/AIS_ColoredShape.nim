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

import
  AIS_DataMapOfShapeDrawer, AIS_Shape, ../NCollection/NCollection_IndexedDataMap,
  ../StdPrs/StdPrs_Volume, ../TopoDS/TopoDS_Compound,
  ../TopTools/TopTools_MapOfShape, ../TColStd/TColStd_MapTransientHasher

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
proc constructAIS_ColoredShape*(theShape: handle[AIS_Shape]): AIS_ColoredShape {.
    constructor, importcpp: "AIS_ColoredShape(@)", header: "AIS_ColoredShape.hxx".}
proc CustomAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape): handle[
    AIS_ColoredDrawer] {.importcpp: "CustomAspects", header: "AIS_ColoredShape.hxx".}
proc ClearCustomAspects*(this: var AIS_ColoredShape) {.
    importcpp: "ClearCustomAspects", header: "AIS_ColoredShape.hxx".}
proc UnsetCustomAspects*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                        theToUnregister: Standard_Boolean = Standard_False) {.
    importcpp: "UnsetCustomAspects", header: "AIS_ColoredShape.hxx".}
proc SetCustomColor*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theColor: Quantity_Color) {.importcpp: "SetCustomColor",
    header: "AIS_ColoredShape.hxx".}
proc SetCustomTransparency*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                           theTransparency: Standard_Real) {.
    importcpp: "SetCustomTransparency", header: "AIS_ColoredShape.hxx".}
proc SetCustomWidth*(this: var AIS_ColoredShape; theShape: TopoDS_Shape;
                    theLineWidth: Standard_Real) {.importcpp: "SetCustomWidth",
    header: "AIS_ColoredShape.hxx".}
proc CustomAspectsMap*(this: AIS_ColoredShape): AIS_DataMapOfShapeDrawer {.
    noSideEffect, importcpp: "CustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc ChangeCustomAspectsMap*(this: var AIS_ColoredShape): var AIS_DataMapOfShapeDrawer {.
    importcpp: "ChangeCustomAspectsMap", header: "AIS_ColoredShape.hxx".}
proc SetColor*(this: var AIS_ColoredShape; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_ColoredShape.hxx".}
proc SetWidth*(this: var AIS_ColoredShape; theLineWidth: Standard_Real) {.
    importcpp: "SetWidth", header: "AIS_ColoredShape.hxx".}
proc SetTransparency*(this: var AIS_ColoredShape; theValue: Standard_Real) {.
    importcpp: "SetTransparency", header: "AIS_ColoredShape.hxx".}
proc SetMaterial*(this: var AIS_ColoredShape; theAspect: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_ColoredShape.hxx".}
proc UnsetTransparency*(this: var AIS_ColoredShape) {.
    importcpp: "UnsetTransparency", header: "AIS_ColoredShape.hxx".}
proc UnsetWidth*(this: var AIS_ColoredShape) {.importcpp: "UnsetWidth",
    header: "AIS_ColoredShape.hxx".}
type
  AIS_ColoredShapebase_type* = AIS_Shape

proc get_type_name*(): cstring {.importcpp: "AIS_ColoredShape::get_type_name(@)",
                              header: "AIS_ColoredShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_ColoredShape::get_type_descriptor(@)",
    header: "AIS_ColoredShape.hxx".}
proc DynamicType*(this: AIS_ColoredShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_ColoredShape.hxx".}
discard "forward decl of AIS_ColoredShape"
type
  Handle_AIS_ColoredShape* = handle[AIS_ColoredShape]
