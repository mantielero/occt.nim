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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Intf/Intf_Interference,
  ../Intf/Intf_Array1OfLin, ../Standard/Standard_Real

discard "forward decl of HLRBRep_ThePolygonOfInterCSurf"
discard "forward decl of HLRBRep_ThePolygonToolOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronOfInterCSurf"
discard "forward decl of HLRBRep_ThePolyhedronToolOfInterCSurf"
discard "forward decl of gp_Lin"
discard "forward decl of Bnd_BoundSortBox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
type
  HLRBRep_TheInterferenceOfInterCSurf* {.importcpp: "HLRBRep_TheInterferenceOfInterCSurf", header: "HLRBRep_TheInterferenceOfInterCSurf.hxx",
                                        bycopy.} = object of Intf_Interference ## !
                                                                          ## Constructs  an  empty
                                                                          ## interference
                                                                          ## between
                                                                          ## Polygon   and
                                                                          ## !
                                                                          ## Polyhedron.
                                                                          ## !
                                                                          ## Computes the
                                                                          ## intersection
                                                                          ## between  the
                                                                          ## segment
                                                                          ## <BegO><EndO>
                                                                          ## ! and the
                                                                          ## triangle <TTri> of
                                                                          ## <thePolyh>.


proc constructHLRBRep_TheInterferenceOfInterCSurf*(): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(
    thePolyg: HLRBRep_ThePolygonOfInterCSurf;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(theLin: gp_Lin;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(theLins: Intf_Array1OfLin;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf;
             thePolyg: HLRBRep_ThePolygonOfInterCSurf;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf; theLin: gp_Lin;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf;
             theLins: Intf_Array1OfLin;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(
    thePolyg: HLRBRep_ThePolygonOfInterCSurf;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf; theBoundSB: var Bnd_BoundSortBox): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(theLin: gp_Lin;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf; theBoundSB: var Bnd_BoundSortBox): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc constructHLRBRep_TheInterferenceOfInterCSurf*(theLins: Intf_Array1OfLin;
    thePolyh: HLRBRep_ThePolyhedronOfInterCSurf; theBoundSB: var Bnd_BoundSortBox): HLRBRep_TheInterferenceOfInterCSurf {.
    constructor, importcpp: "HLRBRep_TheInterferenceOfInterCSurf(@)",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf;
             thePolyg: HLRBRep_ThePolygonOfInterCSurf;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf; theLin: gp_Lin;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Perform*(this: var HLRBRep_TheInterferenceOfInterCSurf;
             theLins: Intf_Array1OfLin;
             thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
             theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Perform",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Interference*(this: var HLRBRep_TheInterferenceOfInterCSurf;
                  thePolyg: HLRBRep_ThePolygonOfInterCSurf;
                  thePolyh: HLRBRep_ThePolyhedronOfInterCSurf;
                  theBoundSB: var Bnd_BoundSortBox) {.importcpp: "Interference",
    header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}
proc Interference*(this: var HLRBRep_TheInterferenceOfInterCSurf;
                  thePolyg: HLRBRep_ThePolygonOfInterCSurf;
                  thePolyh: HLRBRep_ThePolyhedronOfInterCSurf) {.
    importcpp: "Interference", header: "HLRBRep_TheInterferenceOfInterCSurf.hxx".}