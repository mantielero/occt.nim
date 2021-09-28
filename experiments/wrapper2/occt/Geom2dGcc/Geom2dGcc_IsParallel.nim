##  Created on: 1992-06-29
##  Created by: Remi GILET
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

discard "forward decl of Geom2dGcc_IsParallel"
discard "forward decl of Geom2dGcc_IsParallel"
type
  HandleC1C1* = Handle[Geom2dGccIsParallel]

when not defined(noException) and not defined(noGeom2dGccIsParallel):
  template geom2dGccIsParallelRaiseIf*(condition, message: untyped): void =
    if condition:
      proc geom2dGccIsParallel*(a1: Message): Throw {.
          importcpp: "Geom2dGcc_IsParallel(@)", header: "Geom2dGcc_IsParallel.hxx".}

else:
  discard
type
  Geom2dGccIsParallel* {.importcpp: "Geom2dGcc_IsParallel",
                        header: "Geom2dGcc_IsParallel.hxx", bycopy.} = object of StandardDomainError

