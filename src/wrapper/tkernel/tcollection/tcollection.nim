##  Created on: 1992-10-13
##  Created by: Ramin BARRETO
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of TCollection_HExtendedString"
discard "forward decl of TCollection_Array1"
discard "forward decl of TCollection_HArray1"
discard "forward decl of TCollection_Array2"
discard "forward decl of TCollection_HArray2"
discard "forward decl of TCollection_List"
discard "forward decl of TCollection_ListNode"
discard "forward decl of TCollection_ListIterator"
discard "forward decl of TCollection_BaseSequence"
discard "forward decl of TCollection_SeqNode"
discard "forward decl of TCollection_Sequence"
discard "forward decl of TCollection_SequenceNode"
discard "forward decl of TCollection_HSequence"
discard "forward decl of TCollection_MapHasher"
discard "forward decl of TCollection_BasicMap"
discard "forward decl of TCollection_MapNode"
discard "forward decl of TCollection_BasicMapIterator"
discard "forward decl of TCollection_Map"
discard "forward decl of TCollection_MapIterator"
discard "forward decl of TCollection_StdMapNode"
discard "forward decl of TCollection_DataMap"
discard "forward decl of TCollection_DataMapIterator"
discard "forward decl of TCollection_DataMapNode"
discard "forward decl of TCollection_DoubleMap"
discard "forward decl of TCollection_DoubleMapIterator"
discard "forward decl of TCollection_DoubleMapNode"
discard "forward decl of TCollection_IndexedMap"
discard "forward decl of TCollection_IndexedMapNode"
discard "forward decl of TCollection_IndexedDataMap"
discard "forward decl of TCollection_IndexedDataMapNode"
type
  TCollection* {.importcpp: "TCollection", header: "TCollection.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## prime
                                                                                ## number
                                                                                ## greater
                                                                                ## than
                                                                                ## <I>
                                                                                ## suitable
                                                                                ##
                                                                                ## !
                                                                                ## to
                                                                                ## dimension
                                                                                ## a
                                                                                ## Map.
                                                                                ## When
                                                                                ## <I>
                                                                                ## becomes
                                                                                ## great
                                                                                ## there
                                                                                ##
                                                                                ## !
                                                                                ## is
                                                                                ## a
                                                                                ## limit
                                                                                ## on
                                                                                ## the
                                                                                ## result
                                                                                ## (today
                                                                                ## the
                                                                                ## limit
                                                                                ## is
                                                                                ##
                                                                                ## !
                                                                                ## around
                                                                                ## 1
                                                                                ## 000
                                                                                ## 000).
                                                                                ## This
                                                                                ## is
                                                                                ## not
                                                                                ## a
                                                                                ## limit
                                                                                ## of
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ##
                                                                                ## !
                                                                                ## items
                                                                                ## but
                                                                                ## a
                                                                                ## limit
                                                                                ## in
                                                                                ## the
                                                                                ## number
                                                                                ## of
                                                                                ## buckets.
                                                                                ## i.e.
                                                                                ##
                                                                                ## !
                                                                                ## there
                                                                                ## will
                                                                                ## be
                                                                                ## more
                                                                                ## collisions
                                                                                ## in
                                                                                ## the
                                                                                ## map.


proc nextPrimeForMap*(i: cint): cint {.cdecl, importcpp: "TCollection::NextPrimeForMap(@)",
                                   header: "TCollection.hxx".}