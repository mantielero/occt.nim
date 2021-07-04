##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of Geom_Curve"
discard "forward decl of GeomLProp_CurveTool"
discard "forward decl of GeomLProp_SurfaceTool"
discard "forward decl of GeomLProp_CLProps"
discard "forward decl of GeomLProp_SLProps"
type
  GeomLProp* {.importcpp: "GeomLProp", header: "GeomLProp.hxx", bycopy.} = object ## !
                                                                          ## Computes the
                                                                          ## regularity at the
                                                                          ## junction
                                                                          ## between C1 and
                                                                          ## ! C2. The
                                                                          ## booleans r1 and r2 are true if the curves must
                                                                          ## ! be taken
                                                                          ## reversed.  The point u1 on C1 and the point
                                                                          ## ! u2 on C2 must be
                                                                          ## confused.
                                                                          ## ! tl and ta are the linear and
                                                                          ## angular
                                                                          ## tolerance used two
                                                                          ## !
                                                                          ## compare the
                                                                          ## derivative.


proc Continuity*(C1: handle[Geom_Curve]; C2: handle[Geom_Curve]; u1: Standard_Real;
                u2: Standard_Real; r1: Standard_Boolean; r2: Standard_Boolean;
                tl: Standard_Real; ta: Standard_Real): GeomAbs_Shape {.
    importcpp: "GeomLProp::Continuity(@)", header: "GeomLProp.hxx".}
proc Continuity*(C1: handle[Geom_Curve]; C2: handle[Geom_Curve]; u1: Standard_Real;
                u2: Standard_Real; r1: Standard_Boolean; r2: Standard_Boolean): GeomAbs_Shape {.
    importcpp: "GeomLProp::Continuity(@)", header: "GeomLProp.hxx".}