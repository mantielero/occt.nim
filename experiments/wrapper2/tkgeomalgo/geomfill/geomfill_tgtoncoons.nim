##  Created on: 1995-12-04
##  Created by: Laurent BOURESCHE
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

discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TgtOnCoons"
type
  HandleGeomFillTgtOnCoons* = Handle[GeomFillTgtOnCoons]

## ! Defines   an   algorithmic  tangents  field   on a
## ! boundary of a CoonsAlgPatch.

type
  GeomFillTgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                       header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFillTgtField


proc newGeomFillTgtOnCoons*(k: Handle[GeomFillCoonsAlgPatch]; i: cint): GeomFillTgtOnCoons {.
    cdecl, constructor, importcpp: "GeomFill_TgtOnCoons(@)", dynlib: tkgeomalgo.}
proc value*(this: GeomFillTgtOnCoons; w: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkgeomalgo.}
proc d1*(this: GeomFillTgtOnCoons; w: cfloat): Vec {.noSideEffect, cdecl,
    importcpp: "D1", dynlib: tkgeomalgo.}
proc d1*(this: GeomFillTgtOnCoons; w: cfloat; t: var Vec; dt: var Vec) {.noSideEffect,
    cdecl, importcpp: "D1", dynlib: tkgeomalgo.}