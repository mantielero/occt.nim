##  Created on: 1997-05-13
##  Created by: Stagiaire Francois DUMONT
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_Array1OfReal,
  ../Standard/Standard_Real

discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
type
  GeomLib_DenominatorMultiplier* {.importcpp: "GeomLib_DenominatorMultiplier",
                                  header: "GeomLib_DenominatorMultiplier.hxx",
                                  bycopy.} = object ## ! if the surface is rational this will define the evaluator
                                                 ## ! of a real function of 2 variables a(u,v) such that
                                                 ## ! if we define a new surface by :
                                                 ## ! a(u,v) * N(u,v)
                                                 ## ! NewF(u,v) = ----------------
                                                 ## ! a(u,v) * D(u,v)


proc constructGeomLib_DenominatorMultiplier*(
    Surface: handle[Geom_BSplineSurface]; KnotVector: TColStd_Array1OfReal): GeomLib_DenominatorMultiplier {.
    constructor, importcpp: "GeomLib_DenominatorMultiplier(@)",
    header: "GeomLib_DenominatorMultiplier.hxx".}
proc Value*(this: GeomLib_DenominatorMultiplier; UParameter: Standard_Real;
           VParameter: Standard_Real): Standard_Real {.noSideEffect,
    importcpp: "Value", header: "GeomLib_DenominatorMultiplier.hxx".}