##  Created on: 1992-10-14
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../IntCurveSurface/IntCurveSurface_Intersection,
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../TColgp/TColgp_Array2OfPnt, ../TColStd/TColStd_Array1OfReal

discard "forward decl of gp_Lin"
discard "forward decl of HLRBRep_LineTool"
discard "forward decl of HLRBRep_SurfaceTool"
discard "forward decl of HLRBRep_ThePolygonOfInterCSurf"
discard "forward decl of HLRBRep_ThePolygonToolOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronToolOfInterCSurf"
discard "forward decl of HLRBRep_TheInterferenceOfInterCSurf"
discard "forward decl of HLRBRep_TheCSFunctionOfInterCSurf"
discard "forward decl of HLRBRep_TheExactInterCSurf"
discard "forward decl of HLRBRep_TheQuadCurvExactInterCSurf"
discard "forward decl of HLRBRep_TheQuadCurvFuncOfTheQuadCurvExactInterCSurf"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Circ"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Parab"
discard "forward decl of gp_Hypr"
discard "forward decl of IntAna_IntConicQuad"
discard "forward decl of Bnd_Box"
type
  HLRBRep_InterCSurf* {.importcpp: "HLRBRep_InterCSurf",
                       header: "HLRBRep_InterCSurf.hxx", bycopy.} = object of IntCurveSurface_Intersection ##
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


proc constructHLRBRep_InterCSurf*(): HLRBRep_InterCSurf {.constructor,
    importcpp: "HLRBRep_InterCSurf(@)", header: "HLRBRep_InterCSurf.hxx".}
proc Perform*(this: var HLRBRep_InterCSurf; Curve: gp_Lin; Surface: Standard_Address) {.
    importcpp: "Perform", header: "HLRBRep_InterCSurf.hxx".}
proc Perform*(this: var HLRBRep_InterCSurf; Curve: gp_Lin;
             Polygon: HLRBRep_ThePolygonOfInterCSurf; Surface: Standard_Address) {.
    importcpp: "Perform", header: "HLRBRep_InterCSurf.hxx".}
proc Perform*(this: var HLRBRep_InterCSurf; Curve: gp_Lin;
             ThePolygon: HLRBRep_ThePolygonOfInterCSurf;
             Surface: Standard_Address;
             Polyhedron: HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "Perform", header: "HLRBRep_InterCSurf.hxx".}
proc Perform*(this: var HLRBRep_InterCSurf; Curve: gp_Lin;
             ThePolygon: HLRBRep_ThePolygonOfInterCSurf;
             Surface: Standard_Address;
             Polyhedron: HLRBRep_ThePolyhedronOfInterCSurf;
             BndBSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_InterCSurf.hxx".}
proc Perform*(this: var HLRBRep_InterCSurf; Curve: gp_Lin; Surface: Standard_Address;
             Polyhedron: HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "Perform", header: "HLRBRep_InterCSurf.hxx".}