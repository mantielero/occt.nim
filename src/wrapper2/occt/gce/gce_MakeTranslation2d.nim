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
  ../Standard/Standard_Handle, ../gp/gp_Trsf2d

discard "forward decl of gp_Vec2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Trsf2d"
type
  gce_MakeTranslation2d* {.importcpp: "gce_MakeTranslation2d",
                          header: "gce_MakeTranslation2d.hxx", bycopy.} = object ## !
                                                                            ## Constructs a
                                                                            ## translation
                                                                            ## along the
                                                                            ## vector
                                                                            ## Vect.


proc constructgce_MakeTranslation2d*(Vect: gp_Vec2d): gce_MakeTranslation2d {.
    constructor, importcpp: "gce_MakeTranslation2d(@)",
    header: "gce_MakeTranslation2d.hxx".}
proc constructgce_MakeTranslation2d*(Point1: gp_Pnt2d; Point2: gp_Pnt2d): gce_MakeTranslation2d {.
    constructor, importcpp: "gce_MakeTranslation2d(@)",
    header: "gce_MakeTranslation2d.hxx".}
proc Value*(this: gce_MakeTranslation2d): gp_Trsf2d {.noSideEffect,
    importcpp: "Value", header: "gce_MakeTranslation2d.hxx".}
proc Operator*(this: gce_MakeTranslation2d): gp_Trsf2d {.noSideEffect,
    importcpp: "Operator", header: "gce_MakeTranslation2d.hxx".}
converter `gp_Trsf2d`*(this: gce_MakeTranslation2d): gp_Trsf2d {.noSideEffect,
    importcpp: "gce_MakeTranslation2d::operator gp_Trsf2d",
    header: "gce_MakeTranslation2d.hxx".}