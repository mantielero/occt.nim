##  Created on: 1991-07-04
##  Created by: Christophe MARION
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Draw_Display"
discard "forward decl of Poly_Triangulation"
discard "forward decl of gp_Trsf"
type
  DBRepDrawableShape* {.importcpp: "DBRep_DrawableShape",
                       header: "DBRep_DrawableShape.hxx", bycopy.} = object of DrawDrawable3D ##
                                                                                       ## !
                                                                                       ## Auxiliary
                                                                                       ## method
                                                                                       ## computing
                                                                                       ## nodal
                                                                                       ## normals
                                                                                       ## for
                                                                                       ## presentation
                                                                                       ## purposes.
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theNormals
                                                                                       ## [out]
                                                                                       ## vector
                                                                                       ## of
                                                                                       ## computed
                                                                                       ## normals
                                                                                       ## (pair
                                                                                       ## of
                                                                                       ## points
                                                                                       ## [from,
                                                                                       ## to])
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theFace
                                                                                       ## [in]
                                                                                       ## input
                                                                                       ## face
                                                                                       ##
                                                                                       ## !
                                                                                       ## @param
                                                                                       ## theLength
                                                                                       ## [in]
                                                                                       ## normal
                                                                                       ## length
                                                                                       ##
                                                                                       ## !
                                                                                       ## @return
                                                                                       ## FALSE
                                                                                       ## if
                                                                                       ## normals
                                                                                       ## can
                                                                                       ## not
                                                                                       ## be
                                                                                       ## computed

  DBRepDrawableShapebaseType* = DrawDrawable3D

proc getTypeName*(): cstring {.importcpp: "DBRep_DrawableShape::get_type_name(@)",
                            header: "DBRep_DrawableShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DBRep_DrawableShape::get_type_descriptor(@)",
    header: "DBRep_DrawableShape.hxx".}
proc dynamicType*(this: DBRepDrawableShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_DrawableShape.hxx".}
proc constructDBRepDrawableShape*(c: TopoDS_Shape; freeCol: DrawColor;
                                 connCol: DrawColor; edgeCol: DrawColor;
                                 isosCol: DrawColor; size: StandardReal;
                                 nbisos: StandardInteger; discret: StandardInteger): DBRepDrawableShape {.
    constructor, importcpp: "DBRep_DrawableShape(@)",
    header: "DBRep_DrawableShape.hxx".}
proc changeNbIsos*(this: var DBRepDrawableShape; nbIsos: StandardInteger) {.
    importcpp: "ChangeNbIsos", header: "DBRep_DrawableShape.hxx".}
proc nbIsos*(this: DBRepDrawableShape): StandardInteger {.noSideEffect,
    importcpp: "NbIsos", header: "DBRep_DrawableShape.hxx".}
proc changeDiscret*(this: var DBRepDrawableShape; discret: StandardInteger) {.
    importcpp: "ChangeDiscret", header: "DBRep_DrawableShape.hxx".}
proc discret*(this: DBRepDrawableShape): StandardInteger {.noSideEffect,
    importcpp: "Discret", header: "DBRep_DrawableShape.hxx".}
proc shape*(this: DBRepDrawableShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "DBRep_DrawableShape.hxx".}
proc displayOrientation*(this: var DBRepDrawableShape; d: StandardBoolean) {.
    importcpp: "DisplayOrientation", header: "DBRep_DrawableShape.hxx".}
proc displayTriangulation*(this: var DBRepDrawableShape; d: StandardBoolean) {.
    importcpp: "DisplayTriangulation", header: "DBRep_DrawableShape.hxx".}
proc displayPolygons*(this: var DBRepDrawableShape; d: StandardBoolean) {.
    importcpp: "DisplayPolygons", header: "DBRep_DrawableShape.hxx".}
proc displayHLR*(this: var DBRepDrawableShape; withHLR: StandardBoolean;
                withRg1: StandardBoolean; withRgN: StandardBoolean;
                withHid: StandardBoolean; ang: StandardReal) {.
    importcpp: "DisplayHLR", header: "DBRep_DrawableShape.hxx".}
proc displayTriangulation*(this: DBRepDrawableShape): StandardBoolean {.
    noSideEffect, importcpp: "DisplayTriangulation",
    header: "DBRep_DrawableShape.hxx".}
proc displayPolygons*(this: DBRepDrawableShape): StandardBoolean {.noSideEffect,
    importcpp: "DisplayPolygons", header: "DBRep_DrawableShape.hxx".}
proc getDisplayHLR*(this: DBRepDrawableShape; withHLR: var StandardBoolean;
                   withRg1: var StandardBoolean; withRgN: var StandardBoolean;
                   withHid: var StandardBoolean; ang: var StandardReal) {.
    noSideEffect, importcpp: "GetDisplayHLR", header: "DBRep_DrawableShape.hxx".}
proc drawOn*(this: DBRepDrawableShape; dis: var DrawDisplay) {.noSideEffect,
    importcpp: "DrawOn", header: "DBRep_DrawableShape.hxx".}
proc displayHiddenLines*(this: var DBRepDrawableShape; dis: var DrawDisplay) {.
    importcpp: "DisplayHiddenLines", header: "DBRep_DrawableShape.hxx".}
proc copy*(this: DBRepDrawableShape): Handle[DrawDrawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DBRep_DrawableShape.hxx".}
proc dump*(this: DBRepDrawableShape; s: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "DBRep_DrawableShape.hxx".}
proc whatis*(this: DBRepDrawableShape; i: var DrawInterpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DBRep_DrawableShape.hxx".}
proc lastPick*(s: var TopoDS_Shape; u: var StandardReal; v: var StandardReal) {.
    importcpp: "DBRep_DrawableShape::LastPick(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addMeshNormals*(theNormals: var NCollectionVector[Pair[GpPnt, GpPnt]];
                    theFace: TopoDS_Face; theLength: StandardReal): StandardBoolean {.
    importcpp: "DBRep_DrawableShape::addMeshNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addMeshNormals*(theNormals: var NCollectionDataMap[TopoDS_Face,
    NCollectionVector[Pair[GpPnt, GpPnt]]]; theShape: TopoDS_Shape;
                    theLength: StandardReal) {.
    importcpp: "DBRep_DrawableShape::addMeshNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addSurfaceNormals*(theNormals: var NCollectionVector[Pair[GpPnt, GpPnt]];
                       theFace: TopoDS_Face; theLength: StandardReal;
                       theNbAlongU: StandardInteger; theNbAlongV: StandardInteger): StandardBoolean {.
    importcpp: "DBRep_DrawableShape::addSurfaceNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addSurfaceNormals*(theNormals: var NCollectionDataMap[TopoDS_Face,
    NCollectionVector[Pair[GpPnt, GpPnt]]]; theShape: TopoDS_Shape;
                       theLength: StandardReal; theNbAlongU: StandardInteger;
                       theNbAlongV: StandardInteger) {.
    importcpp: "DBRep_DrawableShape::addSurfaceNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
discard "forward decl of DBRep_DrawableShape"
type
  HandleDBRepDrawableShape* = Handle[DBRepDrawableShape]


