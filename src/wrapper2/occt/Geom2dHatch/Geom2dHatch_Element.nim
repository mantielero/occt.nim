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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Geom2dAdaptor/Geom2dAdaptor_Curve,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dHatch_Element* {.importcpp: "Geom2dHatch_Element",
                        header: "Geom2dHatch_Element.hxx", bycopy.} = object


proc constructGeom2dHatch_Element*(): Geom2dHatch_Element {.constructor,
    importcpp: "Geom2dHatch_Element(@)", header: "Geom2dHatch_Element.hxx".}
proc constructGeom2dHatch_Element*(Curve: Geom2dAdaptor_Curve; Orientation: TopAbs_Orientation = TopAbs_FORWARD): Geom2dHatch_Element {.
    constructor, importcpp: "Geom2dHatch_Element(@)",
    header: "Geom2dHatch_Element.hxx".}
proc Curve*(this: Geom2dHatch_Element): Geom2dAdaptor_Curve {.noSideEffect,
    importcpp: "Curve", header: "Geom2dHatch_Element.hxx".}
proc ChangeCurve*(this: var Geom2dHatch_Element): var Geom2dAdaptor_Curve {.
    importcpp: "ChangeCurve", header: "Geom2dHatch_Element.hxx".}
proc Orientation*(this: var Geom2dHatch_Element; Orientation: TopAbs_Orientation) {.
    importcpp: "Orientation", header: "Geom2dHatch_Element.hxx".}
proc Orientation*(this: Geom2dHatch_Element): TopAbs_Orientation {.noSideEffect,
    importcpp: "Orientation", header: "Geom2dHatch_Element.hxx".}