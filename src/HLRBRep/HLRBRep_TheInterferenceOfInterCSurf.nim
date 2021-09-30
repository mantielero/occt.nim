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

discard "forward decl of HLRBRep_ThePolygonOfInterCSurf"
discard "forward decl of HLRBRep_ThePolygonToolOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronToolOfInterCSurf"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
type
  HLRBRepTheInterferenceOfInterCSurf* {.importcpp: "HLRBRep_TheInterferenceOfInterCSurf", header: "HLRBRep_TheInterferenceOfInterCSurf.hxx",
                                       bycopy.} = object of IntfInterference ## !
                                                                        ## Constructs  an  empty
                                                                        ## interference  between Polygon   and
                                                                        ## !
                                                                        ## Polyhedron.
                                                                        ## ! Computes the
                                                                        ## intersection between  the segment
                                                                        ## <BegO><EndO>
                                                                        ## ! and the triangle <TTri> of
                                                                        ## <thePolyh>.


proc constructHLRBRepTheInterferenceOfInterCSurf*(): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(
    thePolyg: HLRBRepThePolygonOfInterCSurf;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(theLin: Lin;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(theLins: IntfArray1OfLin;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf;
             thePolyg: HLRBRepThePolygonOfInterCSurf;
             thePolyh: HLRBRepThePolyhedronOfInterCSurf) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf; theLin: Lin;
             thePolyh: HLRBRepThePolyhedronOfInterCSurf) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf;
             theLins: IntfArray1OfLin; thePolyh: HLRBRepThePolyhedronOfInterCSurf) {.
    importcpp: "Perform", header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(
    thePolyg: HLRBRepThePolygonOfInterCSurf;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf; theBoundSB: var BndBoundSortBox): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(theLin: Lin;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf; theBoundSB: var BndBoundSortBox): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRepTheInterferenceOfInterCSurf*(theLins: IntfArray1OfLin;
    thePolyh: HLRBRepThePolyhedronOfInterCSurf; theBoundSB: var BndBoundSortBox): HLRBRepTheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf;
             thePolyg: HLRBRepThePolygonOfInterCSurf;
             thePolyh: HLRBRepThePolyhedronOfInterCSurf;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf; theLin: Lin;
             thePolyh: HLRBRepThePolyhedronOfInterCSurf;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc perform*(this: var HLRBRepTheInterferenceOfInterCSurf;
             theLins: IntfArray1OfLin; thePolyh: HLRBRepThePolyhedronOfInterCSurf;
             theBoundSB: var BndBoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc interference*(this: var HLRBRepTheInterferenceOfInterCSurf;
                  thePolyg: HLRBRepThePolygonOfInterCSurf;
                  thePolyh: HLRBRepThePolyhedronOfInterCSurf;
                  theBoundSB: var BndBoundSortBox) {.importcpp: "Interference",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc interference*(this: var HLRBRepTheInterferenceOfInterCSurf;
                  thePolyg: HLRBRepThePolygonOfInterCSurf;
                  thePolyh: HLRBRepThePolyhedronOfInterCSurf) {.
    importcpp: "Interference", header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}

























