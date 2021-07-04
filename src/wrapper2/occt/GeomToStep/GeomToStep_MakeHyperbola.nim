##  Created on: 1995-05-04
##  Created by: Dieter THIEMANN
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
  ../Standard/Standard_Handle, GeomToStep_Root

discard "forward decl of StepGeom_Hyperbola"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom2d_Hyperbola"
discard "forward decl of Geom_Hyperbola"
type
  GeomToStep_MakeHyperbola* {.importcpp: "GeomToStep_MakeHyperbola",
                             header: "GeomToStep_MakeHyperbola.hxx", bycopy.} = object of GeomToStep_Root


proc constructGeomToStep_MakeHyperbola*(C: handle[Geom2d_Hyperbola]): GeomToStep_MakeHyperbola {.
    constructor, importcpp: "GeomToStep_MakeHyperbola(@)",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc constructGeomToStep_MakeHyperbola*(C: handle[Geom_Hyperbola]): GeomToStep_MakeHyperbola {.
    constructor, importcpp: "GeomToStep_MakeHyperbola(@)",
    header: "GeomToStep_MakeHyperbola.hxx".}
proc Value*(this: GeomToStep_MakeHyperbola): handle[StepGeom_Hyperbola] {.
    noSideEffect, importcpp: "Value", header: "GeomToStep_MakeHyperbola.hxx".}