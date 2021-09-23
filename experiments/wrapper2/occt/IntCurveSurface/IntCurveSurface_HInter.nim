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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, IntCurveSurface_Intersection,
  ../Standard/Standard_Real, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array1OfReal

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
  IntCurveSurface_HInter* {.importcpp: "IntCurveSurface_HInter",
                           header: "IntCurveSurface_HInter.hxx", bycopy.} = object of IntCurveSurface_Intersection ##
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


proc constructIntCurveSurface_HInter*(): IntCurveSurface_HInter {.constructor,
    importcpp: "IntCurveSurface_HInter(@)", header: "IntCurveSurface_HInter.hxx".}
proc Perform*(this: var IntCurveSurface_HInter; Curve: handle[Adaptor3d_HCurve];
             Surface: handle[Adaptor3d_HSurface]) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc Perform*(this: var IntCurveSurface_HInter; Curve: handle[Adaptor3d_HCurve];
             Polygon: IntCurveSurface_ThePolygonOfHInter;
             Surface: handle[Adaptor3d_HSurface]) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc Perform*(this: var IntCurveSurface_HInter; Curve: handle[Adaptor3d_HCurve];
             ThePolygon: IntCurveSurface_ThePolygonOfHInter;
             Surface: handle[Adaptor3d_HSurface];
             Polyhedron: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_HInter.hxx".}
proc Perform*(this: var IntCurveSurface_HInter; Curve: handle[Adaptor3d_HCurve];
             ThePolygon: IntCurveSurface_ThePolygonOfHInter;
             Surface: handle[Adaptor3d_HSurface];
             Polyhedron: IntCurveSurface_ThePolyhedronOfHInter;
             BndBSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_HInter.hxx".}
proc Perform*(this: var IntCurveSurface_HInter; Curve: handle[Adaptor3d_HCurve];
             Surface: handle[Adaptor3d_HSurface];
             Polyhedron: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_HInter.hxx".}