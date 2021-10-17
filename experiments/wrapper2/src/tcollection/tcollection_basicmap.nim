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

discard "forward decl of TCollection_BasicMapIterator"
type
  TCollectionBasicMap* {.importcpp: "TCollection_BasicMap",
                        header: "TCollection_BasicMap.hxx", bycopy.} = object of RootObj ## ! Returns the number of buckets in <me>.
                                                                         ## !
                                                                         ## Initialize the map.  Single is  True when the  map
                                                                         ## ! uses only one table of
                                                                         ## buckets.
                                                                         ## !
                                                                         ## ! One table  : Map, DataMap
                                                                         ## ! Two tables :
                                                                         ## DoubleMap,
                                                                         ## IndexedMap,
                                                                         ## IndexedDataMap


proc nbBuckets*(this: TCollectionBasicMap): cint {.noSideEffect, cdecl,
    importcpp: "NbBuckets", dynlib: tkmath.}
proc extent*(this: TCollectionBasicMap): cint {.noSideEffect, cdecl,
    importcpp: "Extent", dynlib: tkmath.}
proc isEmpty*(this: TCollectionBasicMap): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkmath.}
proc statistics*(this: TCollectionBasicMap; s: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Statistics", dynlib: tkmath.}