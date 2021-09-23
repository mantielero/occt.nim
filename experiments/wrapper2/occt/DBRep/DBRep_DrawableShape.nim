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

import
  DBRep_ListOfEdge, DBRep_ListOfFace, DBRep_ListOfHideData, ../Draw/Draw_Color,
  ../Draw/Draw_Drawable3D, ../Draw/Draw_Interpretor,
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_Vector,
  ../Standard/Standard_OStream, ../TopoDS/TopoDS_Shape

discard "forward decl of Draw_Display"
discard "forward decl of Poly_Triangulation"
discard "forward decl of gp_Trsf"
type
  DBRep_DrawableShape* {.importcpp: "DBRep_DrawableShape",
                        header: "DBRep_DrawableShape.hxx", bycopy.} = object of Draw_Drawable3D ##
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

  DBRep_DrawableShapebase_type* = Draw_Drawable3D

proc get_type_name*(): cstring {.importcpp: "DBRep_DrawableShape::get_type_name(@)",
                              header: "DBRep_DrawableShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DBRep_DrawableShape::get_type_descriptor(@)",
    header: "DBRep_DrawableShape.hxx".}
proc DynamicType*(this: DBRep_DrawableShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_DrawableShape.hxx".}
proc constructDBRep_DrawableShape*(C: TopoDS_Shape; FreeCol: Draw_Color;
                                  ConnCol: Draw_Color; EdgeCol: Draw_Color;
                                  IsosCol: Draw_Color; size: Standard_Real;
                                  nbisos: Standard_Integer;
                                  discret: Standard_Integer): DBRep_DrawableShape {.
    constructor, importcpp: "DBRep_DrawableShape(@)",
    header: "DBRep_DrawableShape.hxx".}
proc ChangeNbIsos*(this: var DBRep_DrawableShape; NbIsos: Standard_Integer) {.
    importcpp: "ChangeNbIsos", header: "DBRep_DrawableShape.hxx".}
proc NbIsos*(this: DBRep_DrawableShape): Standard_Integer {.noSideEffect,
    importcpp: "NbIsos", header: "DBRep_DrawableShape.hxx".}
proc ChangeDiscret*(this: var DBRep_DrawableShape; Discret: Standard_Integer) {.
    importcpp: "ChangeDiscret", header: "DBRep_DrawableShape.hxx".}
proc Discret*(this: DBRep_DrawableShape): Standard_Integer {.noSideEffect,
    importcpp: "Discret", header: "DBRep_DrawableShape.hxx".}
proc Shape*(this: DBRep_DrawableShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "DBRep_DrawableShape.hxx".}
proc DisplayOrientation*(this: var DBRep_DrawableShape; D: Standard_Boolean) {.
    importcpp: "DisplayOrientation", header: "DBRep_DrawableShape.hxx".}
proc DisplayTriangulation*(this: var DBRep_DrawableShape; D: Standard_Boolean) {.
    importcpp: "DisplayTriangulation", header: "DBRep_DrawableShape.hxx".}
proc DisplayPolygons*(this: var DBRep_DrawableShape; D: Standard_Boolean) {.
    importcpp: "DisplayPolygons", header: "DBRep_DrawableShape.hxx".}
proc DisplayHLR*(this: var DBRep_DrawableShape; withHLR: Standard_Boolean;
                withRg1: Standard_Boolean; withRgN: Standard_Boolean;
                withHid: Standard_Boolean; ang: Standard_Real) {.
    importcpp: "DisplayHLR", header: "DBRep_DrawableShape.hxx".}
proc DisplayTriangulation*(this: DBRep_DrawableShape): Standard_Boolean {.
    noSideEffect, importcpp: "DisplayTriangulation",
    header: "DBRep_DrawableShape.hxx".}
proc DisplayPolygons*(this: DBRep_DrawableShape): Standard_Boolean {.noSideEffect,
    importcpp: "DisplayPolygons", header: "DBRep_DrawableShape.hxx".}
proc GetDisplayHLR*(this: DBRep_DrawableShape; withHLR: var Standard_Boolean;
                   withRg1: var Standard_Boolean; withRgN: var Standard_Boolean;
                   withHid: var Standard_Boolean; ang: var Standard_Real) {.
    noSideEffect, importcpp: "GetDisplayHLR", header: "DBRep_DrawableShape.hxx".}
proc DrawOn*(this: DBRep_DrawableShape; dis: var Draw_Display) {.noSideEffect,
    importcpp: "DrawOn", header: "DBRep_DrawableShape.hxx".}
proc DisplayHiddenLines*(this: var DBRep_DrawableShape; dis: var Draw_Display) {.
    importcpp: "DisplayHiddenLines", header: "DBRep_DrawableShape.hxx".}
proc Copy*(this: DBRep_DrawableShape): handle[Draw_Drawable3D] {.noSideEffect,
    importcpp: "Copy", header: "DBRep_DrawableShape.hxx".}
proc Dump*(this: DBRep_DrawableShape; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "DBRep_DrawableShape.hxx".}
proc Whatis*(this: DBRep_DrawableShape; I: var Draw_Interpretor) {.noSideEffect,
    importcpp: "Whatis", header: "DBRep_DrawableShape.hxx".}
proc LastPick*(S: var TopoDS_Shape; u: var Standard_Real; v: var Standard_Real) {.
    importcpp: "DBRep_DrawableShape::LastPick(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addMeshNormals*(theNormals: var NCollection_Vector[pair[gp_Pnt, gp_Pnt]];
                    theFace: TopoDS_Face; theLength: Standard_Real): Standard_Boolean {.
    importcpp: "DBRep_DrawableShape::addMeshNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addMeshNormals*(theNormals: var NCollection_DataMap[TopoDS_Face,
    NCollection_Vector[pair[gp_Pnt, gp_Pnt]]]; theShape: TopoDS_Shape;
                    theLength: Standard_Real) {.
    importcpp: "DBRep_DrawableShape::addMeshNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addSurfaceNormals*(theNormals: var NCollection_Vector[pair[gp_Pnt, gp_Pnt]];
                       theFace: TopoDS_Face; theLength: Standard_Real;
                       theNbAlongU: Standard_Integer;
                       theNbAlongV: Standard_Integer): Standard_Boolean {.
    importcpp: "DBRep_DrawableShape::addSurfaceNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
proc addSurfaceNormals*(theNormals: var NCollection_DataMap[TopoDS_Face,
    NCollection_Vector[pair[gp_Pnt, gp_Pnt]]]; theShape: TopoDS_Shape;
                       theLength: Standard_Real; theNbAlongU: Standard_Integer;
                       theNbAlongV: Standard_Integer) {.
    importcpp: "DBRep_DrawableShape::addSurfaceNormals(@)",
    header: "DBRep_DrawableShape.hxx".}
discard "forward decl of DBRep_DrawableShape"
type
  Handle_DBRep_DrawableShape* = handle[DBRep_DrawableShape]
