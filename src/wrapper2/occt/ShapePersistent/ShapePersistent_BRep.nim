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

discard "forward decl of BRep_PointRepresentation"
discard "forward decl of BRep_CurveRepresentation"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
type
  ShapePersistentBRep* {.importcpp: "ShapePersistent_BRep",
                        header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentTopoDS ##
                                                                                                ## !
                                                                                                ## Create
                                                                                                ## a
                                                                                                ## persistent
                                                                                                ## object
                                                                                                ## for
                                                                                                ## a
                                                                                                ## vertex

  ShapePersistentBRepPointRepresentation* {.
      importcpp: "ShapePersistent_BRep::PointRepresentation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of StdObjMgtPersistent ## !
                                                                            ## Empty
                                                                            ## constructor.


proc constructShapePersistentBRepPointRepresentation*(): ShapePersistentBRepPointRepresentation {.
    constructor, importcpp: "ShapePersistent_BRep::PointRepresentation(@)",
    header: "ShapePersistent_BRep.hxx".}
proc read*(this: var ShapePersistentBRepPointRepresentation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPointRepresentation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPointRepresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPointRepresentation): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPointRepresentation;
              thePoints: var BRepListOfPointRepresentation) {.noSideEffect,
    importcpp: "Import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPointOnCurve* {.importcpp: "ShapePersistent_BRep::PointOnCurve",
                                    header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPointRepresentation


proc read*(this: var ShapePersistentBRepPointOnCurve;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPointOnCurve;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPointOnCurve;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPointOnCurve): StandardCString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPointOnCurve): Handle[
    BRepPointRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPointsOnSurface* {.importcpp: "ShapePersistent_BRep::PointsOnSurface",
                                       header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPointRepresentation


proc read*(this: var ShapePersistentBRepPointsOnSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPointsOnSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPointsOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPointsOnSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPointOnCurveOnSurface* {.
      importcpp: "ShapePersistent_BRep::PointOnCurveOnSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPointsOnSurface


proc read*(this: var ShapePersistentBRepPointOnCurveOnSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPointOnCurveOnSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPointOnCurveOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPointOnCurveOnSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPointOnCurveOnSurface): Handle[
    BRepPointRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPointOnSurface* {.importcpp: "ShapePersistent_BRep::PointOnSurface",
                                      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPointsOnSurface


proc constructShapePersistentBRepPointOnSurface*(): ShapePersistentBRepPointOnSurface {.
    constructor, importcpp: "ShapePersistent_BRep::PointOnSurface(@)",
    header: "ShapePersistent_BRep.hxx".}
proc read*(this: var ShapePersistentBRepPointOnSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPointOnSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPointOnSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPointOnSurface): Handle[
    BRepPointRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepCurveRepresentation* {.
      importcpp: "ShapePersistent_BRep::CurveRepresentation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of StdObjMgtPersistent ## ! Read
                                                                            ## persistent data from a
                                                                            ## file.


proc read*(this: var ShapePersistentBRepCurveRepresentation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepCurveRepresentation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepCurveRepresentation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepCurveRepresentation): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepCurveRepresentation;
              theCurves: var BRepListOfCurveRepresentation) {.noSideEffect,
    importcpp: "Import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepGCurve* {.importcpp: "ShapePersistent_BRep::GCurve",
                              header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveRepresentation


proc constructShapePersistentBRepGCurve*(): ShapePersistentBRepGCurve {.
    constructor, importcpp: "ShapePersistent_BRep::GCurve(@)",
    header: "ShapePersistent_BRep.hxx".}
proc read*(this: var ShapePersistentBRepGCurve; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepGCurve; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepGCurve): StandardCString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepCurve3D* {.importcpp: "ShapePersistent_BRep::Curve3D",
                               header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepGCurve


proc read*(this: var ShapePersistentBRepCurve3D; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepCurve3D; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepCurve3D;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepCurve3D): StandardCString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepCurve3D): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepCurveOnSurface* {.importcpp: "ShapePersistent_BRep::CurveOnSurface",
                                      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepGCurve


proc read*(this: var ShapePersistentBRepCurveOnSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepCurveOnSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepCurveOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepCurveOnSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepCurveOnSurface): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepCurveOnClosedSurface* {.
      importcpp: "ShapePersistent_BRep::CurveOnClosedSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveOnSurface


proc constructShapePersistentBRepCurveOnClosedSurface*(): ShapePersistentBRepCurveOnClosedSurface {.
    constructor, importcpp: "ShapePersistent_BRep::CurveOnClosedSurface(@)",
    header: "ShapePersistent_BRep.hxx".}
proc read*(this: var ShapePersistentBRepCurveOnClosedSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepCurveOnClosedSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepCurveOnClosedSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepCurveOnClosedSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepCurveOnClosedSurface): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPolygon3D* {.importcpp: "ShapePersistent_BRep::Polygon3D",
                                 header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveRepresentation


proc read*(this: var ShapePersistentBRepPolygon3D;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPolygon3D;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPolygon3D;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPolygon3D): StandardCString {.noSideEffect,
    importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPolygon3D): Handle[BRepCurveRepresentation] {.
    noSideEffect, importcpp: "import", header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPolygonOnTriangulation* {.
      importcpp: "ShapePersistent_BRep::PolygonOnTriangulation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveRepresentation


proc read*(this: var ShapePersistentBRepPolygonOnTriangulation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPolygonOnTriangulation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPolygonOnTriangulation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPolygonOnTriangulation): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPolygonOnTriangulation): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPolygonOnClosedTriangulation* {.
      importcpp: "ShapePersistent_BRep::PolygonOnClosedTriangulation",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPolygonOnTriangulation


proc read*(this: var ShapePersistentBRepPolygonOnClosedTriangulation;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPolygonOnClosedTriangulation;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPolygonOnClosedTriangulation;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPolygonOnClosedTriangulation): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPolygonOnClosedTriangulation): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPolygonOnSurface* {.importcpp: "ShapePersistent_BRep::PolygonOnSurface",
                                        header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveRepresentation


proc read*(this: var ShapePersistentBRepPolygonOnSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPolygonOnSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPolygonOnSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPolygonOnSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPolygonOnSurface): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepPolygonOnClosedSurface* {.
      importcpp: "ShapePersistent_BRep::PolygonOnClosedSurface",
      header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepPolygonOnSurface


proc read*(this: var ShapePersistentBRepPolygonOnClosedSurface;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepPolygonOnClosedSurface;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepPolygonOnClosedSurface;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepPolygonOnClosedSurface): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepPolygonOnClosedSurface): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepCurveOn2Surfaces* {.importcpp: "ShapePersistent_BRep::CurveOn2Surfaces",
                                        header: "ShapePersistent_BRep.hxx", bycopy.} = object of ShapePersistentBRepCurveRepresentation


proc constructShapePersistentBRepCurveOn2Surfaces*(): ShapePersistentBRepCurveOn2Surfaces {.
    constructor, importcpp: "ShapePersistent_BRep::CurveOn2Surfaces(@)",
    header: "ShapePersistent_BRep.hxx".}
proc read*(this: var ShapePersistentBRepCurveOn2Surfaces;
          theReadData: var StdObjMgtReadData) {.importcpp: "Read",
    header: "ShapePersistent_BRep.hxx".}
proc write*(this: ShapePersistentBRepCurveOn2Surfaces;
           theWriteData: var StdObjMgtWriteData) {.noSideEffect, importcpp: "Write",
    header: "ShapePersistent_BRep.hxx".}
proc pChildren*(this: ShapePersistentBRepCurveOn2Surfaces;
               theChildren: var SequenceOfPersistent) {.noSideEffect,
    importcpp: "PChildren", header: "ShapePersistent_BRep.hxx".}
proc pName*(this: ShapePersistentBRepCurveOn2Surfaces): StandardCString {.
    noSideEffect, importcpp: "PName", header: "ShapePersistent_BRep.hxx".}
proc `import`*(this: ShapePersistentBRepCurveOn2Surfaces): Handle[
    BRepCurveRepresentation] {.noSideEffect, importcpp: "import",
                              header: "ShapePersistent_BRep.hxx".}
type
  ShapePersistentBRepTVertex* = TObject[ShapePersistentBReppTVertex]
  ShapePersistentBRepTEdge* = TObject[ShapePersistentBReppTEdge]
  ShapePersistentBRepTFace* = TObject[ShapePersistentBReppTFace]
  ShapePersistentBRepTVertex1* = TObject1[ShapePersistentBReppTVertex]
  ShapePersistentBRepTEdge1* = TObject1[ShapePersistentBReppTEdge]
  ShapePersistentBRepTFace1* = TObject1[ShapePersistentBReppTFace]

proc translate*(theVertex: TopoDS_Vertex;
               theMap: var StdObjMgtTransientPersistentMap): Handle[PTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theEdge: TopoDS_Edge; theMap: var StdObjMgtTransientPersistentMap;
               theTriangleMode: ShapePersistentTriangleMode): Handle[PTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theFace: TopoDS_Face; theMap: var StdObjMgtTransientPersistentMap;
               theTriangleMode: ShapePersistentTriangleMode): Handle[PTObjectT] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theParam: StandardReal; theCurve: Handle[GeomCurve];
               theLoc: TopLocLocation; theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPointOnCurve] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                      header: "ShapePersistent_BRep.hxx".}
proc translate*(theParam: StandardReal; theCurve: Handle[Geom2dCurve];
               theSurf: Handle[GeomSurface]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPointOnCurveOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theParam: StandardReal; theParam2: StandardReal;
               theSurf: Handle[GeomSurface]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPointOnSurface] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                        header: "ShapePersistent_BRep.hxx".}
proc translate*(theCurve: Handle[Geom2dCurve]; theFirstParam: StandardReal;
               theLastParam: StandardReal; theSurf: Handle[GeomSurface];
               theLoc: TopLocLocation; theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepCurveOnSurface] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                        header: "ShapePersistent_BRep.hxx".}
proc translate*(theCurve: Handle[Geom2dCurve]; theCurve2: Handle[Geom2dCurve];
               theFirstParam: StandardReal; theLastParam: StandardReal;
               theSurf: Handle[GeomSurface]; theLoc: TopLocLocation;
               theContinuity: GeomAbsShape;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepCurveOnClosedSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theSurf: Handle[GeomSurface]; theSurf2: Handle[GeomSurface];
               theLoc: TopLocLocation; theLoc2: TopLocLocation;
               theContinuity: GeomAbsShape;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepCurveOn2Surfaces] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(theCurve: Handle[GeomCurve]; theFirstParam: StandardReal;
               theLastParam: StandardReal; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepCurve3D] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                 header: "ShapePersistent_BRep.hxx".}
proc translate*(thePoly: Handle[PolyPolygon3D]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPolygon3D] {.importcpp: "ShapePersistent_BRep::Translate(@)",
                                   header: "ShapePersistent_BRep.hxx".}
proc translate*(thePoly: Handle[PolyPolygon2D]; thePoly2: Handle[PolyPolygon2D];
               theSurf: Handle[GeomSurface]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPolygonOnClosedSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(thePoly: Handle[PolyPolygon2D]; theSurf: Handle[GeomSurface];
               theLoc: TopLocLocation; theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPolygonOnSurface] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(thePolyOnTriang: Handle[PolyPolygonOnTriangulation];
               thePolyOnTriang2: Handle[PolyPolygonOnTriangulation];
               thePolyTriang: Handle[PolyTriangulation]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPolygonOnClosedTriangulation] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}
proc translate*(thePolyOnTriang: Handle[PolyPolygonOnTriangulation];
               thePolyTriang: Handle[PolyTriangulation]; theLoc: TopLocLocation;
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentBRepPolygonOnTriangulation] {.
    importcpp: "ShapePersistent_BRep::Translate(@)",
    header: "ShapePersistent_BRep.hxx".}

