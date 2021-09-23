##  Created on: 1995-02-08
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../TopAbs/TopAbs_Orientation

type
  GeomInt_ParameterAndOrientation* {.importcpp: "GeomInt_ParameterAndOrientation", header: "GeomInt_ParameterAndOrientation.hxx",
                                    bycopy.} = object


proc constructGeomInt_ParameterAndOrientation*(): GeomInt_ParameterAndOrientation {.
    constructor, importcpp: "GeomInt_ParameterAndOrientation(@)",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc constructGeomInt_ParameterAndOrientation*(P: Standard_Real;
    Or1: TopAbs_Orientation; Or2: TopAbs_Orientation): GeomInt_ParameterAndOrientation {.
    constructor, importcpp: "GeomInt_ParameterAndOrientation(@)",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc SetOrientation1*(this: var GeomInt_ParameterAndOrientation;
                     Or: TopAbs_Orientation) {.importcpp: "SetOrientation1",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc SetOrientation2*(this: var GeomInt_ParameterAndOrientation;
                     Or: TopAbs_Orientation) {.importcpp: "SetOrientation2",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc Parameter*(this: GeomInt_ParameterAndOrientation): Standard_Real {.
    noSideEffect, importcpp: "Parameter",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc Orientation1*(this: GeomInt_ParameterAndOrientation): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation1",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc Orientation2*(this: GeomInt_ParameterAndOrientation): TopAbs_Orientation {.
    noSideEffect, importcpp: "Orientation2",
    header: "GeomInt_ParameterAndOrientation.hxx".}