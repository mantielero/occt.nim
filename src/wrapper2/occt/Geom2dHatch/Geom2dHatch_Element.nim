##  Created on: 1993-11-10
##  Created by: Jean Marc LACHAUME
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

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dHatchElement* {.importcpp: "Geom2dHatch_Element",
                       header: "Geom2dHatch_Element.hxx", bycopy.} = object


proc constructGeom2dHatchElement*(): Geom2dHatchElement {.constructor,
    importcpp: "Geom2dHatch_Element(@)", header: "Geom2dHatch_Element.hxx".}
proc constructGeom2dHatchElement*(curve: Geom2dAdaptorCurve;
                                 orientation: TopAbsOrientation = topAbsFORWARD): Geom2dHatchElement {.
    constructor, importcpp: "Geom2dHatch_Element(@)",
    header: "Geom2dHatch_Element.hxx".}
proc curve*(this: Geom2dHatchElement): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Curve", header: "Geom2dHatch_Element.hxx".}
proc changeCurve*(this: var Geom2dHatchElement): var Geom2dAdaptorCurve {.
    importcpp: "ChangeCurve", header: "Geom2dHatch_Element.hxx".}
proc orientation*(this: var Geom2dHatchElement; orientation: TopAbsOrientation) {.
    importcpp: "Orientation", header: "Geom2dHatch_Element.hxx".}
proc orientation*(this: Geom2dHatchElement): TopAbsOrientation {.noSideEffect,
    importcpp: "Orientation", header: "Geom2dHatch_Element.hxx".}

