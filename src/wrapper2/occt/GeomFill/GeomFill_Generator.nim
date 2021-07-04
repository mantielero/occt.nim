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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GeomFill_Profiler, ../Standard/Standard_Real

discard "forward decl of Geom_Surface"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
type
  GeomFill_Generator* {.importcpp: "GeomFill_Generator",
                       header: "GeomFill_Generator.hxx", bycopy.} = object of GeomFill_Profiler


proc constructGeomFill_Generator*(): GeomFill_Generator {.constructor,
    importcpp: "GeomFill_Generator(@)", header: "GeomFill_Generator.hxx".}
proc Perform*(this: var GeomFill_Generator; PTol: Standard_Real) {.
    importcpp: "Perform", header: "GeomFill_Generator.hxx".}
proc Surface*(this: GeomFill_Generator): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_Generator.hxx".}