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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Intf/Intf_Interference,
  ../Intf/Intf_Array1OfLin, ../Standard/Standard_Real

discard "forward decl of IntCurveSurface_ThePolygonOfHInter"
discard "forward decl of IntCurveSurface_ThePolygonToolOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronOfHInter"
discard "forward decl of IntCurveSurface_ThePolyhedronToolOfHInter"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
type
  IntCurveSurface_TheInterferenceOfHInter* {.
      importcpp: "IntCurveSurface_TheInterferenceOfHInter",
      header: "IntCurveSurface_TheInterferenceOfHInter.hxx", bycopy.} = object of Intf_Interference ##
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


proc constructIntCurveSurface_TheInterferenceOfHInter*(): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(
    thePolyg: IntCurveSurface_ThePolygonOfHInter;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(theLin: gp_Lin;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(theLins: Intf_Array1OfLin;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter;
             thePolyg: IntCurveSurface_ThePolygonOfHInter;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter; theLin: gp_Lin;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter;
             theLins: Intf_Array1OfLin;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Perform", header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(
    thePolyg: IntCurveSurface_ThePolygonOfHInter;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
    theBoundSB: var Bnd_BoundSortBox): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(theLin: gp_Lin;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
    theBoundSB: var Bnd_BoundSortBox): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc constructIntCurveSurface_TheInterferenceOfHInter*(theLins: Intf_Array1OfLin;
    thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
    theBoundSB: var Bnd_BoundSortBox): IntCurveSurface_TheInterferenceOfHInter {.
    constructor, importcpp: "IntCurveSurface_TheInterferenceOfHInter(@)",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter;
             thePolyg: IntCurveSurface_ThePolygonOfHInter;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter; theLin: gp_Lin;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Perform*(this: var IntCurveSurface_TheInterferenceOfHInter;
             theLins: Intf_Array1OfLin;
             thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Interference*(this: var IntCurveSurface_TheInterferenceOfHInter;
                  thePolyg: IntCurveSurface_ThePolygonOfHInter;
                  thePolyh: IntCurveSurface_ThePolyhedronOfHInter;
                  theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Interference",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}
proc Interference*(this: var IntCurveSurface_TheInterferenceOfHInter;
                  thePolyg: IntCurveSurface_ThePolygonOfHInter;
                  thePolyh: IntCurveSurface_ThePolyhedronOfHInter) {.
    importcpp: "Interference",
    header: "IntCurveSurface_TheInterferenceOfHInter.hxx".}