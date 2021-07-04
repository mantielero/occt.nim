##  Created on: 1993-02-26
##  Created by: Remi LEQUETTE
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Address,
  ../Standard/Standard_OStream

discard "forward decl of TCollection_BasicMapIterator"
type
  TCollection_BasicMap* {.importcpp: "TCollection_BasicMap",
                         header: "TCollection_BasicMap.hxx", bycopy.} = object ## !
                                                                          ## Returns the number of
                                                                          ## buckets in <me>.
                                                                          ## !
                                                                          ## Initialize the map.  Single is  True when the  map
                                                                          ## ! uses only one table of
                                                                          ## buckets.
                                                                          ## !
                                                                          ## ! One table  : Map,
                                                                          ## DataMap
                                                                          ## ! Two tables :
                                                                          ## DoubleMap,
                                                                          ## IndexedMap,
                                                                          ## IndexedDataMap


proc NbBuckets*(this: TCollection_BasicMap): Standard_Integer {.noSideEffect,
    importcpp: "NbBuckets", header: "TCollection_BasicMap.hxx".}
proc Extent*(this: TCollection_BasicMap): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "TCollection_BasicMap.hxx".}
proc IsEmpty*(this: TCollection_BasicMap): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "TCollection_BasicMap.hxx".}
proc Statistics*(this: TCollection_BasicMap; S: var Standard_OStream) {.noSideEffect,
    importcpp: "Statistics", header: "TCollection_BasicMap.hxx".}