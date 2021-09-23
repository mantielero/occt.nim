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
  ../Standard/Standard_Handle

discard "forward decl of Geom_Transformation"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  GC_MakeTranslation* {.importcpp: "GC_MakeTranslation",
                       header: "GC_MakeTranslation.hxx", bycopy.} = object ## ! Constructs a
                                                                      ## translation along the vector " Vect "


proc constructGC_MakeTranslation*(Vect: gp_Vec): GC_MakeTranslation {.constructor,
    importcpp: "GC_MakeTranslation(@)", header: "GC_MakeTranslation.hxx".}
proc constructGC_MakeTranslation*(Point1: gp_Pnt; Point2: gp_Pnt): GC_MakeTranslation {.
    constructor, importcpp: "GC_MakeTranslation(@)",
    header: "GC_MakeTranslation.hxx".}
proc Value*(this: GC_MakeTranslation): handle[Geom_Transformation] {.noSideEffect,
    importcpp: "Value", header: "GC_MakeTranslation.hxx".}
converter `constopencascade`*(this: GC_MakeTranslation): handle[Geom_Transformation] {.
    noSideEffect, importcpp: "GC_MakeTranslation::operator constopencascade",
    header: "GC_MakeTranslation.hxx".}