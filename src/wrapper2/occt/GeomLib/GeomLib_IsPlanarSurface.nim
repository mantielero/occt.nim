##  Created on: 1998-11-23
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pln, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real

discard "forward decl of StdFail_NotDone"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pln"
type
  GeomLib_IsPlanarSurface* {.importcpp: "GeomLib_IsPlanarSurface",
                            header: "GeomLib_IsPlanarSurface.hxx", bycopy.} = object


proc constructGeomLib_IsPlanarSurface*(S: handle[Geom_Surface];
                                      Tol: Standard_Real = 1.0e-7): GeomLib_IsPlanarSurface {.
    constructor, importcpp: "GeomLib_IsPlanarSurface(@)",
    header: "GeomLib_IsPlanarSurface.hxx".}
proc IsPlanar*(this: GeomLib_IsPlanarSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsPlanar", header: "GeomLib_IsPlanarSurface.hxx".}
proc Plan*(this: GeomLib_IsPlanarSurface): gp_Pln {.noSideEffect, importcpp: "Plan",
    header: "GeomLib_IsPlanarSurface.hxx".}