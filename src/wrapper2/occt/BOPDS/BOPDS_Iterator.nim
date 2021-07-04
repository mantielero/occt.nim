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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer, BOPDS_PDS,
  BOPDS_VectorOfPair, BOPDS_VectorOfVectorOfPair, ../BOPTools/BOPTools_BoxTree,
  ../NCollection/NCollection_BaseAllocator, ../Precision/Precision,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum

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
proc constructBOPDS_Iterator*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_Iterator {.
    constructor, importcpp: "BOPDS_Iterator(@)", header: "BOPDS_Iterator.hxx".}
proc SetDS*(this: var BOPDS_Iterator; pDS: BOPDS_PDS) {.importcpp: "SetDS",
    header: "BOPDS_Iterator.hxx".}
proc DS*(this: BOPDS_Iterator): BOPDS_DS {.noSideEffect, importcpp: "DS",
                                       header: "BOPDS_Iterator.hxx".}
proc Initialize*(this: var BOPDS_Iterator; theType1: TopAbs_ShapeEnum;
                theType2: TopAbs_ShapeEnum) {.importcpp: "Initialize",
    header: "BOPDS_Iterator.hxx".}
proc More*(this: BOPDS_Iterator): Standard_Boolean {.noSideEffect, importcpp: "More",
    header: "BOPDS_Iterator.hxx".}
proc Next*(this: var BOPDS_Iterator) {.importcpp: "Next", header: "BOPDS_Iterator.hxx".}
proc Value*(this: BOPDS_Iterator; theIndex1: var Standard_Integer;
           theIndex2: var Standard_Integer) {.noSideEffect, importcpp: "Value",
    header: "BOPDS_Iterator.hxx".}
proc Prepare*(this: var BOPDS_Iterator;
             theCtx: handle[IntTools_Context] = handle[IntTools_Context]();
             theCheckOBB: Standard_Boolean = Standard_False;
             theFuzzyValue: Standard_Real = Confusion()) {.importcpp: "Prepare",
    header: "BOPDS_Iterator.hxx".}
proc IntersectExt*(this: var BOPDS_Iterator; theIndicies: TColStd_MapOfInteger) {.
    importcpp: "IntersectExt", header: "BOPDS_Iterator.hxx".}
proc ExpectedLength*(this: BOPDS_Iterator): Standard_Integer {.noSideEffect,
    importcpp: "ExpectedLength", header: "BOPDS_Iterator.hxx".}
proc BlockLength*(this: BOPDS_Iterator): Standard_Integer {.noSideEffect,
    importcpp: "BlockLength", header: "BOPDS_Iterator.hxx".}
proc SetRunParallel*(this: var BOPDS_Iterator; theFlag: Standard_Boolean) {.
    importcpp: "SetRunParallel", header: "BOPDS_Iterator.hxx".}
proc RunParallel*(this: BOPDS_Iterator): Standard_Boolean {.noSideEffect,
    importcpp: "RunParallel", header: "BOPDS_Iterator.hxx".}
proc NbExtInterfs*(): Standard_Integer {.importcpp: "BOPDS_Iterator::NbExtInterfs(@)",
                                      header: "BOPDS_Iterator.hxx".}