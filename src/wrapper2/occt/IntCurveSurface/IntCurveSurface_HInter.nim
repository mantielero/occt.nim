##  Created on: 1993-04-07
##  Created by: Laurent BUCHARD
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of IntCurveSurface_TheHCurveTool"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntCurveSurface_ThePolygonOfHInter"
discard "forward decl of IntCurveSurface_ThePolygonToolOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronToolOfHInter"
discard "forward decl of IntCurveSurface_TheInterferenceOfHInter"
discard "forward decl of IntCurveSurface_TheCSFunctionOfHInter"
discard "forward decl of IntCurveSurface_TheExactHInter"
discard "forward decl of IntCurveSurface_TheQuadCurvExactHInter"
discard "forward decl of IntCurveSurface_TheQuadCurvFuncOfTheQuadCurvExactHInter"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Lin"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
discard "forward decl of IntAna_IntConicQuad"
discard "forward decl of Bnd_Box"
type
  IntCurveSurfaceHInter* {.importcpp: "IntCurveSurface_HInter",
                          header: "IntCurveSurface_HInter.hxx", bycopy.} = object of IntCurveSurfaceIntersection ##
                                                                                                          ## !
                                                                                                          ## Empty
                                                                                                          ## Constructor
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## Compute
                                                                                                          ## the
                                                                                                          ## Intersection
                                                                                                          ## between
                                                                                                          ## the
                                                                                                          ## curve
                                                                                                          ## and
                                                                                                          ## the
                                                                                                          ##
                                                                                                          ## !
                                                                                                          ## surface


proc constructIntCurveSurfaceHInter*(): IntCurveSurfaceHInter {.constructor,
    importcpp: "IntCurveSurface_HInter(@)", header: "IntCurveSurface_HInter.hxx".}
proc perform*(this: var IntCurveSurfaceHInter; curve: Handle[Adaptor3dHCurve];
             surface: Handle[Adaptor3dHSurface]) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc perform*(this: var IntCurveSurfaceHInter; curve: Handle[Adaptor3dHCurve];
             polygon: IntCurveSurfaceThePolygonOfHInter;
             surface: Handle[Adaptor3dHSurface]) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc perform*(this: var IntCurveSurfaceHInter; curve: Handle[Adaptor3dHCurve];
             thePolygon: IntCurveSurfaceThePolygonOfHInter;
             surface: Handle[Adaptor3dHSurface];
             polyhedron: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_HInter.hxx".}
proc perform*(this: var IntCurveSurfaceHInter; curve: Handle[Adaptor3dHCurve];
             thePolygon: IntCurveSurfaceThePolygonOfHInter;
             surface: Handle[Adaptor3dHSurface];
             polyhedron: IntCurveSurfaceThePolyhedronOfHInter;
             bndBSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc perform*(this: var IntCurveSurfaceHInter; curve: Handle[Adaptor3dHCurve];
             surface: Handle[Adaptor3dHSurface];
             polyhedron: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_HInter.hxx".}

