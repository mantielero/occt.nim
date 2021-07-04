##  Created on: 1992-08-26
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
  ../Standard/Standard_Handle, ../gp/gp_Trsf

discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Trsf"
type
  gce_MakeTranslation* {.importcpp: "gce_MakeTranslation",
                        header: "gce_MakeTranslation.hxx", bycopy.} = object ## !
                                                                        ## Constructs a
                                                                        ## translation along the vector " Vect"


proc constructgce_MakeTranslation*(Vect: gp_Vec): gce_MakeTranslation {.constructor,
    importcpp: "gce_MakeTranslation(@)", header: "gce_MakeTranslation.hxx".}
proc constructgce_MakeTranslation*(Point1: gp_Pnt; Point2: gp_Pnt): gce_MakeTranslation {.
    constructor, importcpp: "gce_MakeTranslation(@)",
    header: "gce_MakeTranslation.hxx".}
proc Value*(this: gce_MakeTranslation): gp_Trsf {.noSideEffect, importcpp: "Value",
    header: "gce_MakeTranslation.hxx".}
proc Operator*(this: gce_MakeTranslation): gp_Trsf {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeTranslation.hxx".}
converter `gp_Trsf`*(this: gce_MakeTranslation): gp_Trsf {.noSideEffect,
    importcpp: "gce_MakeTranslation::operator gp_Trsf",
    header: "gce_MakeTranslation.hxx".}