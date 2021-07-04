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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_Ellipse

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Elips"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  GC_MakeEllipse* {.importcpp: "GC_MakeEllipse", header: "GC_MakeEllipse.hxx", bycopy.} = object of GC_Root ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## ellipse
                                                                                                  ## from
                                                                                                  ## a
                                                                                                  ## non
                                                                                                  ## persistent
                                                                                                  ## ellipse
                                                                                                  ## E
                                                                                                  ## from
                                                                                                  ## package
                                                                                                  ## gp
                                                                                                  ## by
                                                                                                  ## its
                                                                                                  ## conversion.


proc constructGC_MakeEllipse*(E: gp_Elips): GC_MakeEllipse {.constructor,
    importcpp: "GC_MakeEllipse(@)", header: "GC_MakeEllipse.hxx".}
proc constructGC_MakeEllipse*(A2: gp_Ax2; MajorRadius: Standard_Real;
                             MinorRadius: Standard_Real): GC_MakeEllipse {.
    constructor, importcpp: "GC_MakeEllipse(@)", header: "GC_MakeEllipse.hxx".}
proc constructGC_MakeEllipse*(S1: gp_Pnt; S2: gp_Pnt; Center: gp_Pnt): GC_MakeEllipse {.
    constructor, importcpp: "GC_MakeEllipse(@)", header: "GC_MakeEllipse.hxx".}
proc Value*(this: GC_MakeEllipse): handle[Geom_Ellipse] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeEllipse.hxx".}
converter `constopencascade`*(this: GC_MakeEllipse): handle[Geom_Ellipse] {.
    noSideEffect, importcpp: "GC_MakeEllipse::operator constopencascade",
    header: "GC_MakeEllipse.hxx".}