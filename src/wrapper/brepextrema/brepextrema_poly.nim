import brepextrema_types

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


proc Distance*(S1: TopoDS_Shape; S2: TopoDS_Shape; P1: var gp_Pnt; P2: var gp_Pnt;
              dist: var cfloat): bool {.cdecl,
                                    importcpp: "BRepExtrema_Poly::Distance(@)",
                                    header: "BRepExtrema_Poly.hxx".}