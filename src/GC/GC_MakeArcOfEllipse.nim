##  Created on: 1992-09-28
##  Created by: Remi GILET
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Pnt"
type
  GC_MakeArcOfEllipse* {.importcpp: "GC_MakeArcOfEllipse",
                        header: "GC_MakeArcOfEllipse.hxx", bycopy.} = object of GC_Root ##
                                                                                 ## !
                                                                                 ## Constructs
                                                                                 ## an
                                                                                 ## arc
                                                                                 ## of
                                                                                 ## Ellipse
                                                                                 ## (TrimmedCurve
                                                                                 ## from
                                                                                 ## Geom)
                                                                                 ## from
                                                                                 ##
                                                                                 ## !
                                                                                 ## a
                                                                                 ## Ellipse
                                                                                 ## between
                                                                                 ## two
                                                                                 ## parameters
                                                                                 ## Alpha1
                                                                                 ## and
                                                                                 ## Alpha2.


proc makeArcOfEllipse*(elips: Elips; alpha1: cfloat; alpha2: cfloat;
                                  sense: bool): GC_MakeArcOfEllipse {.constructor,
    importcpp: "GC_MakeArcOfEllipse(@)", header: "GC_MakeArcOfEllipse.hxx".}
proc makeArcOfEllipse*(elips: Elips; p: Pnt; alpha: cfloat; sense: bool): GC_MakeArcOfEllipse {.
    constructor, importcpp: "GC_MakeArcOfEllipse(@)",
    header: "GC_MakeArcOfEllipse.hxx".}
proc makeArcOfEllipse*(elips: Elips; p1: Pnt; p2: Pnt; sense: bool): GC_MakeArcOfEllipse {.
    constructor, importcpp: "GC_MakeArcOfEllipse(@)",
    header: "GC_MakeArcOfEllipse.hxx".}
proc value*(this: GC_MakeArcOfEllipse): Handle[GeomTrimmedCurve] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeArcOfEllipse.hxx".}
converter `constopencascade`*(this: GC_MakeArcOfEllipse): Handle[GeomTrimmedCurve] {.
    noSideEffect, importcpp: "GC_MakeArcOfEllipse::operator constopencascade",
    header: "GC_MakeArcOfEllipse.hxx".}





















