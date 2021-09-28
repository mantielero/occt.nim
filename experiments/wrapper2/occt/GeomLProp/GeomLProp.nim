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

discard "forward decl of Geom_Curve"
discard "forward decl of GeomLProp_CurveTool"
discard "forward decl of GeomLProp_SurfaceTool"
discard "forward decl of GeomLProp_CLProps"
discard "forward decl of GeomLProp_SLProps"
type
  GeomLProp* {.importcpp: "GeomLProp", header: "GeomLProp.hxx", bycopy.} = object


proc `new`*(this: var GeomLProp; theSize: csize_t): pointer {.
    importcpp: "GeomLProp::operator new", header: "GeomLProp.hxx".}
proc `delete`*(this: var GeomLProp; theAddress: pointer) {.
    importcpp: "GeomLProp::operator delete", header: "GeomLProp.hxx".}
proc `new[]`*(this: var GeomLProp; theSize: csize_t): pointer {.
    importcpp: "GeomLProp::operator new[]", header: "GeomLProp.hxx".}
proc `delete[]`*(this: var GeomLProp; theAddress: pointer) {.
    importcpp: "GeomLProp::operator delete[]", header: "GeomLProp.hxx".}
proc `new`*(this: var GeomLProp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLProp::operator new", header: "GeomLProp.hxx".}
proc `delete`*(this: var GeomLProp; a2: pointer; a3: pointer) {.
    importcpp: "GeomLProp::operator delete", header: "GeomLProp.hxx".}
proc continuity*(c1: Handle[GeomCurve]; c2: Handle[GeomCurve]; u1: StandardReal;
                u2: StandardReal; r1: StandardBoolean; r2: StandardBoolean;
                tl: StandardReal; ta: StandardReal): GeomAbsShape {.
    importcpp: "GeomLProp::Continuity(@)", header: "GeomLProp.hxx".}
proc continuity*(c1: Handle[GeomCurve]; c2: Handle[GeomCurve]; u1: StandardReal;
                u2: StandardReal; r1: StandardBoolean; r2: StandardBoolean): GeomAbsShape {.
    importcpp: "GeomLProp::Continuity(@)", header: "GeomLProp.hxx".}