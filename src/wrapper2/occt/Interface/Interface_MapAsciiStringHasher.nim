##  Created on: 2003-05-06
##  Created by: Galina KULIKOVA
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

discard "forward decl of TCollection_AsciiString"
type
  InterfaceMapAsciiStringHasher* {.importcpp: "Interface_MapAsciiStringHasher",
                                  header: "Interface_MapAsciiStringHasher.hxx",
                                  bycopy.} = object ## ! Computes a hash code for the given ASCII string, in the range [1, theUpperBound]
                                                 ## ! @param theAsciiString the ASCII string which hash code is to be computed
                                                 ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                 ## ! @return a computed hash code, in the range [1, theUpperBound]


proc hashCode*(theAsciiString: TCollectionAsciiString;
              theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "Interface_MapAsciiStringHasher::HashCode(@)",
    header: "Interface_MapAsciiStringHasher.hxx".}
proc isEqual*(k1: TCollectionAsciiString; k2: TCollectionAsciiString): StandardBoolean {.
    importcpp: "Interface_MapAsciiStringHasher::IsEqual(@)",
    header: "Interface_MapAsciiStringHasher.hxx".}

