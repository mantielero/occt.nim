import ncollection_types
import ../standard/standard_types
##  Created on: 2002-04-18
##  Created by: Alexander KARTOMIN (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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






proc initialize*(this: var NCollectionBaseMapIterator; theMap: NCollectionBaseMap) {.
    cdecl, importcpp: "Initialize", header: "NCollection_BaseMap.hxx".}
proc reset*(this: var NCollectionBaseMapIterator) {.cdecl, importcpp: "Reset",
    header: "NCollection_BaseMap.hxx".}
proc isEqual*(this: NCollectionBaseMapIterator;
             theOther: NCollectionBaseMapIterator): bool {.noSideEffect, cdecl,
    importcpp: "IsEqual", header: "NCollection_BaseMap.hxx".}
proc nbBuckets*(this: NCollectionBaseMap): cint {.noSideEffect, cdecl,
    importcpp: "NbBuckets", header: "NCollection_BaseMap.hxx".}
proc extent*(this: NCollectionBaseMap): cint {.noSideEffect, cdecl,
    importcpp: "Extent", header: "NCollection_BaseMap.hxx".}
proc isEmpty*(this: NCollectionBaseMap): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "NCollection_BaseMap.hxx".}
proc statistics*(this: NCollectionBaseMap; s: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Statistics", header: "NCollection_BaseMap.hxx".}
proc allocator*(this: NCollectionBaseMap): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "NCollection_BaseMap.hxx".}
