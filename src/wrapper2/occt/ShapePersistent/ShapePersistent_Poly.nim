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
  ../StdObjMgt/StdObjMgt_SharedObject,
  ../StdObjMgt/StdObjMgt_TransientPersistentMap, ../StdObjMgt/StdObjMgt_ReadData,
  ../StdObjMgt/StdObjMgt_WriteData, ../StdLPersistent/StdLPersistent_HArray1,
  ShapePersistent_HArray1

discard "forward decl of Poly_Polygon2D"
discard "forward decl of Poly_Polygon3D"
discard "forward decl of Poly_PolygonOnTriangulation"
discard "forward decl of Poly_Triangulation"
type
  ShapePersistent_Poly* {.importcpp: "ShapePersistent_Poly",
                         header: "ShapePersistent_Poly.hxx", bycopy.} = object of StdObjMgt_SharedObject ##
                                                                                                  ## !
                                                                                                  ## Create
                                                                                                  ## a
                                                                                                  ## persistent
                                                                                                  ## object
                                                                                                  ## for
                                                                                                  ## a
                                                                                                  ## 2D
                                                                                                  ## polygon

  ShapePersistent_PolyPolygon2D* = ShapePersistent_Polyinstance[
      ShapePersistent_PolypPolygon2D, Poly_Polygon2D]
  ShapePersistent_PolyPolygon3D* = ShapePersistent_Polyinstance[
      ShapePersistent_PolypPolygon3D, Poly_Polygon3D]
  ShapePersistent_PolyPolygonOnTriangulation* = ShapePersistent_Polyinstance[
      ShapePersistent_PolypPolygonOnTriangulation, Poly_PolygonOnTriangulation]
  ShapePersistent_PolyTriangulation* = ShapePersistent_Polyinstance[
      ShapePersistent_PolypTriangulation, Poly_Triangulation]

proc Translate*(thePoly: handle[Poly_Polygon2D];
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_PolyPolygon2D] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                    header: "ShapePersistent_Poly.hxx".}
proc Translate*(thePoly: handle[Poly_Polygon3D];
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_PolyPolygon3D] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                    header: "ShapePersistent_Poly.hxx".}
proc Translate*(thePolyOnTriang: handle[Poly_PolygonOnTriangulation];
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_PolyPolygonOnTriangulation] {.
    importcpp: "ShapePersistent_Poly::Translate(@)",
    header: "ShapePersistent_Poly.hxx".}
proc Translate*(thePolyTriang: handle[Poly_Triangulation];
               theMap: var StdObjMgt_TransientPersistentMap): handle[
    ShapePersistent_PolyTriangulation] {.importcpp: "ShapePersistent_Poly::Translate(@)",
                                        header: "ShapePersistent_Poly.hxx".}