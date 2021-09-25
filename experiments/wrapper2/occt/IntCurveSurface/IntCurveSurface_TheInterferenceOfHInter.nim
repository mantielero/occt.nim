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

discard "forward decl of IntCurveSurface_ThePolygonOfHInter"
discard "forward decl of IntCurveSurface_ThePolygonToolOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronToolOfHInter"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
type
  IntCurveSurfaceTheInterferenceOfHInter* {.
      importcpp: "IntCurveSurface_TheInterferenceOfHInter",
      header: "IntCurveSurface_TheInterferenceOfHInter.hxx", bycopy.} = object of IntfInterference ##
                                                                                            ## !
                                                                                            ## Constructs
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## interference
                                                                                            ## between
                                                                                            ## Polygon
                                                                                            ## and
                                                                                            ##
                                                                                            ## !
                                                                                            ## Polyhedron.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Computes
                                                                                            ## the
                                                                                            ## intersection
                                                                                            ## between
                                                                                            ## the
                                                                                            ## segment
                                                                                            ## <BegO><EndO>
                                                                                            ##
                                                                                            ## !
                                                                                            ## and
                                                                                            ## the
                                                                                            ## triangle
                                                                                            ## <TTri>
                                                                                            ## of
                                                                                            ## <thePolyh>.


proc constructIntCurveSurfaceTheInterferenceOfHInter*(): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(
    thePolyg: IntCurveSurfaceThePolygonOfHInter;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(theLin: Lin;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(theLins: IntfArray1OfLin;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter;
             thePolyg: IntCurveSurfaceThePolygonOfHInter;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter; theLin: Lin;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter;
             theLins: IntfArray1OfLin;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(
    thePolyg: IntCurveSurfaceThePolygonOfHInter;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
    theBoundSB: var BndBoundSortBox): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(theLin: Lin;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
    theBoundSB: var BndBoundSortBox): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurfaceTheInterferenceOfHInter*(theLins: IntfArray1OfLin;
    thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
    theBoundSB: var BndBoundSortBox): IntCurveSurfaceTheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter;
             thePolyg: IntCurveSurfaceThePolygonOfHInter;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter; theLin: Lin;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc perform*(this: var IntCurveSurfaceTheInterferenceOfHInter;
             theLins: IntfArray1OfLin;
             thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc interference*(this: var IntCurveSurfaceTheInterferenceOfHInter;
                  thePolyg: IntCurveSurfaceThePolygonOfHInter;
                  thePolyh: IntCurveSurfaceThePolyhedronOfHInter;
                  theBoundSB: var BndBoundSortBox) {.importcpp: "Interference",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc interference*(this: var IntCurveSurfaceTheInterferenceOfHInter;
                  thePolyg: IntCurveSurfaceThePolygonOfHInter;
                  thePolyh: IntCurveSurfaceThePolyhedronOfHInter) {.
    importcpp: "Interference",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
