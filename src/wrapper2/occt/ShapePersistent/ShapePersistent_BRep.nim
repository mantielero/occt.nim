##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ShapePersistent_TopoDS, ShapePersistent_Geom, ShapePersistent_Geom2d,
  ShapePersistent_Poly, ../StdObjMgt/StdObjMgt_TransientPersistentMap,
  ../StdObject/StdObject_Location, ../StdObject/StdObject_gp_Vectors,
  ../BRep/BRep_ListOfPointRepresentation, ../BRep/BRep_ListOfCurveRepresentation,
  ../gp/gp_Pnt, ../gp/gp_Pnt2d

discard "forward decl of BRep_PointRepresentation"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  ShapePersistent_BRep* {.importcpp: "ShapePersistent_BRep",
                         header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_TopoDS ##
                                                                                                  ## !
                                                                                                  ## Create
                                                                                                  ## a
                                                                                                  ## persistent
                                                                                                  ## object
                                                                                                  ## for
                                                                                                  ## a
                                                                                                  ## vertex

  ShapePersistent_BRepPointRepresentation* {.
      importcpp: "ShapePersistent_BRep::PointRepresentation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of StdObjMgt_Persistent ## !
                                                                             ## Empty
                                                                             ## constructor.


proc constructShapePersistent_BRepPointRepresentation*(): ShapePersistent_BRepPointRepresentation {.
    constructor, importcpp: "ShapePersistent_BRep::PointRepresentation(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Read*(this: var ShapePersistent_BRepPointRepresentation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPointRepresentation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPointRepresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPointRepresentation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc Import*(this: ShapePersistent_BRepPointRepresentation;
            thePoints: var BRep_ListOfPointRepresentation) {.noSideEffect,
    importcpp: "Import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPointOnCurve* {.importcpp: "ShapePersistent_BRep::PointOnCurve",
                                     header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPointRepresentation


proc Read*(this: var ShapePersistent_BRepPointOnCurve;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPointOnCurve;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPointOnCurve;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPointOnCurve): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPointOnCurve): handle[
    BRep_PointRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPointsOnSurface* {.importcpp: "ShapePersistent_BRep::PointsOnSurface",
                                        header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPointRepresentation


proc Read*(this: var ShapePersistent_BRepPointsOnSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPointsOnSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPointsOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPointsOnSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPointOnCurveOnSurface* {.
      importcpp: "ShapePersistent_BRep::PointOnCurveOnSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPointsOnSurface


proc Read*(this: var ShapePersistent_BRepPointOnCurveOnSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPointOnCurveOnSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPointOnCurveOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPointOnCurveOnSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPointOnCurveOnSurface): handle[
    BRep_PointRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPointOnSurface* {.importcpp: "ShapePersistent_BRep::PointOnSurface",
                                       header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPointsOnSurface


proc constructShapePersistent_BRepPointOnSurface*(): ShapePersistent_BRepPointOnSurface {.
    constructor, importcpp: "ShapePersistent_BRep::PointOnSurface(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Read*(this: var ShapePersistent_BRepPointOnSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPointOnSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPointOnSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPointOnSurface): handle[
    BRep_PointRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepCurveRepresentation* {.
      importcpp: "ShapePersistent_BRep::CurveRepresentation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of StdObjMgt_Persistent ## !
                                                                             ## Read
                                                                             ## persistent
                                                                             ## data
                                                                             ## from a
                                                                             ## file.


proc Read*(this: var ShapePersistent_BRepCurveRepresentation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepCurveRepresentation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepCurveRepresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepCurveRepresentation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc Import*(this: ShapePersistent_BRepCurveRepresentation;
            theCurves: var BRep_ListOfCurveRepresentation) {.noSideEffect,
    importcpp: "Import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepGCurve* {.importcpp: "ShapePersistent_BRep::GCurve",
                               header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveRepresentation


proc constructShapePersistent_BRepGCurve*(): ShapePersistent_BRepGCurve {.
    constructor, importcpp: "ShapePersistent_BRep::GCurve(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Read*(this: var ShapePersistent_BRepGCurve; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepGCurve; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepGCurve): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepCurve3D* {.importcpp: "ShapePersistent_BRep::Curve3D",
                                header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepGCurve


proc Read*(this: var ShapePersistent_BRepCurve3D;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepCurve3D;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepCurve3D;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepCurve3D): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepCurve3D): handle[BRep_CurveRepresentation] {.
    noSideEffect, importcpp: "import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepCurveOnSurface* {.importcpp: "ShapePersistent_BRep::CurveOnSurface",
                                       header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepGCurve


proc Read*(this: var ShapePersistent_BRepCurveOnSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepCurveOnSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepCurveOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepCurveOnSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepCurveOnSurface): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepCurveOnClosedSurface* {.
      importcpp: "ShapePersistent_BRep::CurveOnClosedSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveOnSurface


proc constructShapePersistent_BRepCurveOnClosedSurface*(): ShapePersistent_BRepCurveOnClosedSurface {.
    constructor, importcpp: "ShapePersistent_BRep::CurveOnClosedSurface(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Read*(this: var ShapePersistent_BRepCurveOnClosedSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepCurveOnClosedSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepCurveOnClosedSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepCurveOnClosedSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepCurveOnClosedSurface): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPolygon3D* {.importcpp: "ShapePersistent_BRep::Polygon3D",
                                  header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveRepresentation


proc Read*(this: var ShapePersistent_BRepPolygon3D;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPolygon3D;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPolygon3D;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPolygon3D): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPolygon3D): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPolygonOnTriangulation* {.
      importcpp: "ShapePersistent_BRep::PolygonOnTriangulation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveRepresentation


proc Read*(this: var ShapePersistent_BRepPolygonOnTriangulation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPolygonOnTriangulation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPolygonOnTriangulation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPolygonOnTriangulation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPolygonOnTriangulation): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPolygonOnClosedTriangulation* {.
      importcpp: "ShapePersistent_BRep::PolygonOnClosedTriangulation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPolygonOnTriangulation


proc Read*(this: var ShapePersistent_BRepPolygonOnClosedTriangulation;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPolygonOnClosedTriangulation;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPolygonOnClosedTriangulation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPolygonOnClosedTriangulation): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPolygonOnClosedTriangulation): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPolygonOnSurface* {.
      importcpp: "ShapePersistent_BRep::PolygonOnSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveRepresentation


proc Read*(this: var ShapePersistent_BRepPolygonOnSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPolygonOnSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPolygonOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPolygonOnSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPolygonOnSurface): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepPolygonOnClosedSurface* {.
      importcpp: "ShapePersistent_BRep::PolygonOnClosedSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepPolygonOnSurface


proc Read*(this: var ShapePersistent_BRepPolygonOnClosedSurface;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepPolygonOnClosedSurface;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepPolygonOnClosedSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepPolygonOnClosedSurface): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepPolygonOnClosedSurface): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepCurveOn2Surfaces* {.
      importcpp: "ShapePersistent_BRep::CurveOn2Surfaces",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistent_BRepCurveRepresentation


proc constructShapePersistent_BRepCurveOn2Surfaces*(): ShapePersistent_BRepCurveOn2Surfaces {.
    constructor, importcpp: "ShapePersistent_BRep::CurveOn2Surfaces(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Read*(this: var ShapePersistent_BRepCurveOn2Surfaces;
          theReadData: var StdObjMgt_ReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc Write*(this: ShapePersistent_BRepCurveOn2Surfaces;
           theWriteData: var StdObjMgt_WriteData) {.noSideEffect,
    importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc PChildren*(this: ShapePersistent_BRepCurveOn2Surfaces;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc PName*(this: ShapePersistent_BRepCurveOn2Surfaces): Standard_CString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistent_BRepCurveOn2Surfaces): handle[
    BRep_CurveRepresentation] {.noSideEffect, importcpp: "import",
                               header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistent_BRepTVertex* = tObject[ShapePersistent_BReppTVertex]
  ShapePersistent_BRepTEdge* = tObject[ShapePersistent_BReppTEdge]
  ShapePersistent_BRepTFace* = tObject[ShapePersistent_BReppTFace]
  ShapePersistent_BRepTVertex1* = tObject1[ShapePersistent_BReppTVertex]
  ShapePersistent_BRepTEdge1* = tObject1[ShapePersistent_BReppTEdge]
  ShapePersistent_BRepTFace1* = tObject1[ShapePersistent_BReppTFace]

proc Translate*(theVertex: TopoDS_Vertex;
               theMap: var StdObjMgt_TransientPersistentMap): handle[pTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theEdge: TopoDS_Edge; theMap: var StdObjMgt_TransientPersistentMap;
               theTriangleMode: ShapePersistent_TriangleMode): handle[pTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theFace: TopoDS_Face; theMap: var StdObjMgt_TransientPersistentMap;
               theTriangleMode: ShapePersistent_TriangleMode): handle[pTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theParam: Standard_Real; theCurve: handle[Geom_Curve];
               theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPointOnCurve] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                       header: "ShapePersistent_BRep.hxx".}
proc Translate*(theParam: Standard_Real; theCurve: handle[Geom2d_Curve];
               theSurf: handle[Geom_Surface]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPointOnCurveOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theParam: Standard_Real; theParam2: Standard_Real;
               theSurf: handle[Geom_Surface]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPointOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theCurve: handle[Geom2d_Curve]; theFirstParam: Standard_Real;
               theLastParam: Standard_Real; theSurf: handle[Geom_Surface];
               theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepCurveOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theCurve: handle[Geom2d_Curve]; theCurve2: handle[Geom2d_Curve];
               theFirstParam: Standard_Real; theLastParam: Standard_Real;
               theSurf: handle[Geom_Surface]; theLoc: TopLoc_Location;
               theContinuity: GeomAbs_Shape;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepCurveOnClosedSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theSurf: handle[Geom_Surface]; theSurf2: handle[Geom_Surface];
               theLoc: TopLoc_Location; theLoc2: TopLoc_Location;
               theContinuity: GeomAbs_Shape;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepCurveOn2Surfaces] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(theCurve: handle[Geom_Curve]; theFirstParam: Standard_Real;
               theLastParam: Standard_Real; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepCurve3D] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                  header: "ShapePersistent_BRep.hxx".}
proc Translate*(thePoly: handle[Poly_Polygon3D]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPolygon3D] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                    header: "ShapePersistent_BRep.hxx".}
proc Translate*(thePoly: handle[Poly_Polygon2D]; thePoly2: handle[Poly_Polygon2D];
               theSurf: handle[Geom_Surface]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPolygonOnClosedSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(thePoly: handle[Poly_Polygon2D]; theSurf: handle[Geom_Surface];
               theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPolygonOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(thePolyOnTriang: handle[Poly_PolygonOnTriangulation];
               thePolyOnTriang2: handle[Poly_PolygonOnTriangulation];
               thePolyTriang: handle[Poly_Triangulation]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPolygonOnClosedTriangulation] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc Translate*(thePolyOnTriang: handle[Poly_PolygonOnTriangulation];
               thePolyTriang: handle[Poly_Triangulation]; theLoc: TopLoc_Location;
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_BRepPolygonOnTriangulation] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}