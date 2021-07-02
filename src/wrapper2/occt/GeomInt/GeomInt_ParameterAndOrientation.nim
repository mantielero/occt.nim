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

type
  GeomIntParameterAndOrientation* {.importcpp: "GeomInt_ParameterAndOrientation", header: "GeomInt_ParameterAndOrientation.hxx",
                                   bycopy.} = object


proc constructGeomIntParameterAndOrientation*(): GeomIntParameterAndOrientation {.
    constructor, importcpp: "GeomInt_ParameterAndOrientation(@)",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc constructGeomIntParameterAndOrientation*(p: StandardReal;
    or1: TopAbsOrientation; or2: TopAbsOrientation): GeomIntParameterAndOrientation {.
    constructor, importcpp: "GeomInt_ParameterAndOrientation(@)",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc setOrientation1*(this: var GeomIntParameterAndOrientation;
                     `or`: TopAbsOrientation) {.importcpp: "SetOrientation1",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc setOrientation2*(this: var GeomIntParameterAndOrientation;
                     `or`: TopAbsOrientation) {.importcpp: "SetOrientation2",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc parameter*(this: GeomIntParameterAndOrientation): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "GeomInt_ParameterAndOrientation.hxx".}
proc orientation1*(this: GeomIntParameterAndOrientation): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation1",
    header: "GeomInt_ParameterAndOrientation.hxx".}
proc orientation2*(this: GeomIntParameterAndOrientation): TopAbsOrientation {.
    noSideEffect, importcpp: "Orientation2",
    header: "GeomInt_ParameterAndOrientation.hxx".}

