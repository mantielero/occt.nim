##  Created on: 1994-11-04
##  Created by: Christian CAILLET
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

discard "forward decl of Transfer_Finder"
type
  TransferFindHasher* {.importcpp: "Transfer_FindHasher",
                       header: "Transfer_FindHasher.hxx", bycopy.} = object


proc `new`*(this: var TransferFindHasher; theSize: csize_t): pointer {.
    importcpp: "Transfer_FindHasher::operator new",
    header: "Transfer_FindHasher.hxx".}
proc `delete`*(this: var TransferFindHasher; theAddress: pointer) {.
    importcpp: "Transfer_FindHasher::operator delete",
    header: "Transfer_FindHasher.hxx".}
proc `new[]`*(this: var TransferFindHasher; theSize: csize_t): pointer {.
    importcpp: "Transfer_FindHasher::operator new[]",
    header: "Transfer_FindHasher.hxx".}
proc `delete[]`*(this: var TransferFindHasher; theAddress: pointer) {.
    importcpp: "Transfer_FindHasher::operator delete[]",
    header: "Transfer_FindHasher.hxx".}
proc `new`*(this: var TransferFindHasher; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "Transfer_FindHasher::operator new",
    header: "Transfer_FindHasher.hxx".}
proc `delete`*(this: var TransferFindHasher; a2: pointer; a3: pointer) {.
    importcpp: "Transfer_FindHasher::operator delete",
    header: "Transfer_FindHasher.hxx".}
proc hashCode*(theFinder: Handle[TransferFinder]; theUpperBound: int): int {.
    importcpp: "Transfer_FindHasher::HashCode(@)",
    header: "Transfer_FindHasher.hxx".}
proc isEqual*(k1: Handle[TransferFinder]; k2: Handle[TransferFinder]): StandardBoolean {.
    importcpp: "Transfer_FindHasher::IsEqual(@)",
    header: "Transfer_FindHasher.hxx".}