##  Created on: 1994-02-17
##  Created by: Bruno DUMORTIER
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

discard "forward decl of Geom_Surface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
type
  GeomFillGenerator* {.importcpp: "GeomFill_Generator",
                      header: "GeomFill_Generator.hxx", bycopy.} = object of GeomFillProfiler


proc newGeomFillGenerator*(): GeomFillGenerator {.cdecl, constructor,
    importcpp: "GeomFill_Generator(@)", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillGenerator; pTol: cfloat) {.cdecl, importcpp: "Perform",
    dynlib: tkgeomalgo.}
proc surface*(this: GeomFillGenerator): Handle[GeomSurface] {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkgeomalgo.}