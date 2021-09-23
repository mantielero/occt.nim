##  Created on: 1994-02-24
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Real

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of BRepLProp_CurveTool"
discard "forward decl of BRepLProp_SurfaceTool"
discard "forward decl of BRepLProp_CLProps"
discard "forward decl of BRepLProp_SLProps"
type
  BRepLProp* {.importcpp: "BRepLProp", header: "BRepLProp.hxx", bycopy.} = object ## !
                                                                          ## Computes the
                                                                          ## regularity at the
                                                                          ## junction
                                                                          ## between C1 and
                                                                          ## ! C2. The point u1 on C1 and the point u2 on  C2 must be
                                                                          ## !
                                                                          ## confused.   tl  and ta  are  the  linear  and
                                                                          ## angular
                                                                          ## !
                                                                          ## tolerance used two
                                                                          ## compare the
                                                                          ## derivative.


proc Continuity*(C1: BRepAdaptor_Curve; C2: BRepAdaptor_Curve; u1: Standard_Real;
                u2: Standard_Real; tl: Standard_Real; ta: Standard_Real): GeomAbs_Shape {.
    importcpp: "BRepLProp::Continuity(@)", header: "BRepLProp.hxx".}
proc Continuity*(C1: BRepAdaptor_Curve; C2: BRepAdaptor_Curve; u1: Standard_Real;
                u2: Standard_Real): GeomAbs_Shape {.
    importcpp: "BRepLProp::Continuity(@)", header: "BRepLProp.hxx".}