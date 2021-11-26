##  Created on: 2003-01-15
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"
type
  STEPConstructPointHasher* {.importcpp: "STEPConstruct_PointHasher",
                             header: "STEPConstruct_PointHasher.hxx", bycopy.} = object


proc `new`*(this: var STEPConstructPointHasher; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_PointHasher::operator new",
    header: "STEPConstruct_PointHasher.hxx".}
proc `delete`*(this: var STEPConstructPointHasher; theAddress: pointer) {.
    importcpp: "STEPConstruct_PointHasher::operator delete",
    header: "STEPConstruct_PointHasher.hxx".}
proc `new[]`*(this: var STEPConstructPointHasher; theSize: csize_t): pointer {.
    importcpp: "STEPConstruct_PointHasher::operator new[]",
    header: "STEPConstruct_PointHasher.hxx".}
proc `delete[]`*(this: var STEPConstructPointHasher; theAddress: pointer) {.
    importcpp: "STEPConstruct_PointHasher::operator delete[]",
    header: "STEPConstruct_PointHasher.hxx".}
proc `new`*(this: var STEPConstructPointHasher; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "STEPConstruct_PointHasher::operator new",
    header: "STEPConstruct_PointHasher.hxx".}
proc `delete`*(this: var STEPConstructPointHasher; a2: pointer; a3: pointer) {.
    importcpp: "STEPConstruct_PointHasher::operator delete",
    header: "STEPConstruct_PointHasher.hxx".}
proc hashCode*(thePoint: Pnt; theUpperBound: int): int {.
    importcpp: "STEPConstruct_PointHasher::HashCode(@)",
    header: "STEPConstruct_PointHasher.hxx".}
proc isEqual*(point1: Pnt; point2: Pnt): StandardBoolean {.
    importcpp: "STEPConstruct_PointHasher::IsEqual(@)",
    header: "STEPConstruct_PointHasher.hxx".}