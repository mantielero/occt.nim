import transfer_types

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


proc hashCode*(theFinder: Handle[TransferFinder]; theUpperBound: cint): cint {.cdecl,
    importcpp: "Transfer_FindHasher::HashCode(@)", header: "Transfer_FindHasher.hxx".}
proc isEqual*(k1: Handle[TransferFinder]; k2: Handle[TransferFinder]): bool {.cdecl,
    importcpp: "Transfer_FindHasher::IsEqual(@)", header: "Transfer_FindHasher.hxx".}
