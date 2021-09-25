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

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
type
  ShapePersistentPoly* {.importcpp: "ShapePersistent_Poly",
                        header: "ShapePersistent_Poly.hxx", bycopy.} = object of StdObjMgtSharedObject ##
                                                                                                ## !
                                                                                                ## Create
                                                                                                ## a
                                                                                                ## persistent
                                                                                                ## object
                                                                                                ## for
                                                                                                ## a
                                                                                                ## 2D
                                                                                                ## polygon

  ShapePersistentPolyPolygon2D* = ShapePersistentPolyinstance[
      ShapePersistentPolypPolygon2D, PolyPolygon2D]
  ShapePersistentPolyPolygon3D* = ShapePersistentPolyinstance[
      ShapePersistentPolypPolygon3D, PolyPolygon3D]
  ShapePersistentPolyPolygonOnTriangulation* = ShapePersistentPolyinstance[
      ShapePersistentPolypPolygonOnTriangulation, PolyPolygonOnTriangulation]
  ShapePersistentPolyTriangulation* = ShapePersistentPolyinstance[
      ShapePersistentPolypTriangulation, PolyTriangulation]

proc translate*(thePoly: Handle[PolyPolygon2D];
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentPolyPolygon2D] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                   header: "ShapePersistent_Poly.hxx".}
proc translate*(thePoly: Handle[PolyPolygon3D];
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentPolyPolygon3D] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                   header: "ShapePersistent_Poly.hxx".}
proc translate*(thePolyOnTriang: Handle[PolyPolygonOnTriangulation];
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentPolyPolygonOnTriangulation] {.
    importcpp: "ShapePersistent_Poly::Translate(@)",
    header: "ShapePersistent_Poly.hxx".}
proc translate*(thePolyTriang: Handle[PolyTriangulation];
               theMap: var StdObjMgtTransientPersistentMap): Handle[
    ShapePersistentPolyTriangulation] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                       header: "ShapePersistent_Poly.hxx".}
