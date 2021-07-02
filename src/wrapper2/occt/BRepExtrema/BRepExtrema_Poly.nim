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

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
type
  BRepExtremaPoly* {.importcpp: "BRepExtrema_Poly", header: "BRepExtrema_Poly.hxx",
                    bycopy.} = object ## ! returns Standard_True if OK.


proc distance*(s1: TopoDS_Shape; s2: TopoDS_Shape; p1: var GpPnt; p2: var GpPnt;
              dist: var StandardReal): StandardBoolean {.
    importcpp: "BRepExtrema_Poly::Distance(@)", header: "BRepExtrema_Poly.hxx".}

