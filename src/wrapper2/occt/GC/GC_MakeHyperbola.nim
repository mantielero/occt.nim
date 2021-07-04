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
  ../Standard/Standard_Handle, GC_Root, ../Geom/Geom_Hyperbola

discard "forward decl of StdFail_NotDone"
discard "forward decl of gp_Hypr"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
type
  GC_MakeHyperbola* {.importcpp: "GC_MakeHyperbola",
                     header: "GC_MakeHyperbola.hxx", bycopy.} = object of GC_Root ## !
                                                                           ## Creates  an
                                                                           ## Hyperbola from a non
                                                                           ## persistent
                                                                           ## hyperbola  from
                                                                           ## package gp by
                                                                           ## conversion.


proc constructGC_MakeHyperbola*(H: gp_Hypr): GC_MakeHyperbola {.constructor,
    importcpp: "GC_MakeHyperbola(@)", header: "GC_MakeHyperbola.hxx".}
proc constructGC_MakeHyperbola*(A2: gp_Ax2; MajorRadius: Standard_Real;
                               MinorRadius: Standard_Real): GC_MakeHyperbola {.
    constructor, importcpp: "GC_MakeHyperbola(@)", header: "GC_MakeHyperbola.hxx".}
proc constructGC_MakeHyperbola*(S1: gp_Pnt; S2: gp_Pnt; Center: gp_Pnt): GC_MakeHyperbola {.
    constructor, importcpp: "GC_MakeHyperbola(@)", header: "GC_MakeHyperbola.hxx".}
proc Value*(this: GC_MakeHyperbola): handle[Geom_Hyperbola] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeHyperbola.hxx".}
converter `constopencascade`*(this: GC_MakeHyperbola): handle[Geom_Hyperbola] {.
    noSideEffect, importcpp: "GC_MakeHyperbola::operator constopencascade",
    header: "GC_MakeHyperbola.hxx".}