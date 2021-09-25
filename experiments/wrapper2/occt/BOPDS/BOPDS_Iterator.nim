##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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

discard "forward decl of BOPDS_DS"
discard "forward decl of IntTools_Context"
type
  BOPDS_Iterator* {.importcpp: "BOPDS_Iterator", header: "BOPDS_Iterator.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## contructor
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Number
                                                                                         ## of
                                                                                         ## extra
                                                                                         ## interfering
                                                                                         ## types
                                                                                         ##
                                                                                         ## Extra
                                                                                         ## lists
                                                                                         ## contain
                                                                                         ## only
                                                                                         ## V/V,
                                                                                         ## V/E,
                                                                                         ## V/F
                                                                                         ## interfering
                                                                                         ## pairs.
                                                                                         ##
                                                                                         ## Although
                                                                                         ## E/E
                                                                                         ## is
                                                                                         ## also
                                                                                         ## initialized
                                                                                         ## (but
                                                                                         ## never
                                                                                         ## filled)
                                                                                         ## for
                                                                                         ## code
                                                                                         ## simplicity.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Protected
                                                                                         ## methods
                                                                                         ## for
                                                                                         ## bounding
                                                                                         ## boxes
                                                                                         ## intersection
                                                                                         ##
                                                                                         ## !
                                                                                         ## Intersects
                                                                                         ## the
                                                                                         ## Bounding
                                                                                         ## boxes
                                                                                         ## of
                                                                                         ## sub-shapes
                                                                                         ## of
                                                                                         ## the
                                                                                         ## arguments
                                                                                         ## with
                                                                                         ## the
                                                                                         ## tree
                                                                                         ##
                                                                                         ## !
                                                                                         ## and
                                                                                         ## saves
                                                                                         ## the
                                                                                         ## interfering
                                                                                         ## pairs
                                                                                         ## for
                                                                                         ## further
                                                                                         ## geometrical
                                                                                         ## intersection.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @name
                                                                                         ## Fields
    ## !< Allocator
    ## !< Length of the intersection vector of
    ## ! particular intersection type
    ## !< Data Structure
    ## !< Pairs with interfering bounding boxes
    ## !< Iterator on each interfering type
    ## !< Flag for parallel processing
    ## !< Extra pairs of sub-shapes found after
    ## ! intersection of increased sub-shapes
    ## !< Information flag for using the extra lists


proc constructBOPDS_Iterator*(): BOPDS_Iterator {.constructor,
    importcpp: "BOPDS_Iterator(@)", header: "BOPDS_Iterator.hxx".}
proc destroyBOPDS_Iterator*(this: var BOPDS_Iterator) {.
    importcpp: "#.~BOPDS_Iterator()", header: "BOPDS_Iterator.hxx".}
proc constructBOPDS_Iterator*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_Iterator {.
    constructor, importcpp: "BOPDS_Iterator(@)", header: "BOPDS_Iterator.hxx".}
proc setDS*(this: var BOPDS_Iterator; pDS: Bopds_Pds) {.importcpp: "SetDS",
    header: "BOPDS_Iterator.hxx".}
proc ds*(this: BOPDS_Iterator): Bopds_Ds {.noSideEffect, importcpp: "DS",
                                       header: "BOPDS_Iterator.hxx".}
proc initialize*(this: var BOPDS_Iterator; theType1: TopAbsShapeEnum;
                theType2: TopAbsShapeEnum) {.importcpp: "Initialize",
    header: "BOPDS_Iterator.hxx".}
proc more*(this: BOPDS_Iterator): bool {.noSideEffect, importcpp: "More",
                                     header: "BOPDS_Iterator.hxx".}
proc next*(this: var BOPDS_Iterator) {.importcpp: "Next", header: "BOPDS_Iterator.hxx".}
proc value*(this: BOPDS_Iterator; theIndex1: var int; theIndex2: var int) {.noSideEffect,
    importcpp: "Value", header: "BOPDS_Iterator.hxx".}
proc prepare*(this: var BOPDS_Iterator;
             theCtx: Handle[IntToolsContext] = handle[IntToolsContext]();
             theCheckOBB: bool = false; theFuzzyValue: float = confusion()) {.
    importcpp: "Prepare", header: "BOPDS_Iterator.hxx".}
proc intersectExt*(this: var BOPDS_Iterator; theIndicies: TColStdMapOfInteger) {.
    importcpp: "IntersectExt", header: "BOPDS_Iterator.hxx".}
proc expectedLength*(this: BOPDS_Iterator): int {.noSideEffect,
    importcpp: "ExpectedLength", header: "BOPDS_Iterator.hxx".}
proc blockLength*(this: BOPDS_Iterator): int {.noSideEffect,
    importcpp: "BlockLength", header: "BOPDS_Iterator.hxx".}
proc setRunParallel*(this: var BOPDS_Iterator; theFlag: bool) {.
    importcpp: "SetRunParallel", header: "BOPDS_Iterator.hxx".}
proc runParallel*(this: BOPDS_Iterator): bool {.noSideEffect,
    importcpp: "RunParallel", header: "BOPDS_Iterator.hxx".}
proc nbExtInterfs*(): int {.importcpp: "BOPDS_Iterator::NbExtInterfs(@)",
                         header: "BOPDS_Iterator.hxx".}
