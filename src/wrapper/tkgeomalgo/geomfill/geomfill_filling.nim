##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Standard_NoSuchObject"
type
  GeomFillFilling* {.importcpp: "GeomFill_Filling", header: "GeomFill_Filling.hxx",
                    bycopy.} = object of RootObj


proc newGeomFillFilling*(): GeomFillFilling {.cdecl, constructor,
    importcpp: "GeomFill_Filling(@)", dynlib: tkgeomalgo.}
proc nbUPoles*(this: GeomFillFilling): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkgeomalgo.}
proc nbVPoles*(this: GeomFillFilling): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkgeomalgo.}
proc poles*(this: GeomFillFilling; poles: var TColgpArray2OfPnt) {.noSideEffect, cdecl,
    importcpp: "Poles", dynlib: tkgeomalgo.}
proc isRational*(this: GeomFillFilling): bool {.noSideEffect, cdecl,
    importcpp: "isRational", dynlib: tkgeomalgo.}
proc weights*(this: GeomFillFilling; weights: var TColStdArray2OfReal) {.noSideEffect,
    cdecl, importcpp: "Weights", dynlib: tkgeomalgo.}