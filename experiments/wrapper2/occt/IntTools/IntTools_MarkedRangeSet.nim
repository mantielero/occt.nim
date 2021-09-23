##  Created on: 2001-09-26
##  Created by: Michael KLOKOV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../TColStd/TColStd_SequenceOfReal,
  ../Standard/Standard_Integer, ../TColStd/TColStd_SequenceOfInteger,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

discard "forward decl of IntTools_CArray1OfReal"
discard "forward decl of IntTools_Range"
type
  IntTools_MarkedRangeSet* {.importcpp: "IntTools_MarkedRangeSet",
                            header: "IntTools_MarkedRangeSet.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructIntTools_MarkedRangeSet*(): IntTools_MarkedRangeSet {.constructor,
    importcpp: "IntTools_MarkedRangeSet(@)", header: "IntTools_MarkedRangeSet.hxx".}
proc constructIntTools_MarkedRangeSet*(theFirstBoundary: Standard_Real;
                                      theLastBoundary: Standard_Real;
                                      theInitFlag: Standard_Integer): IntTools_MarkedRangeSet {.
    constructor, importcpp: "IntTools_MarkedRangeSet(@)",
    header: "IntTools_MarkedRangeSet.hxx".}
proc constructIntTools_MarkedRangeSet*(theSortedArray: IntTools_CArray1OfReal;
                                      theInitFlag: Standard_Integer): IntTools_MarkedRangeSet {.
    constructor, importcpp: "IntTools_MarkedRangeSet(@)",
    header: "IntTools_MarkedRangeSet.hxx".}
proc SetBoundaries*(this: var IntTools_MarkedRangeSet;
                   theFirstBoundary: Standard_Real;
                   theLastBoundary: Standard_Real; theInitFlag: Standard_Integer) {.
    importcpp: "SetBoundaries", header: "IntTools_MarkedRangeSet.hxx".}
proc SetRanges*(this: var IntTools_MarkedRangeSet;
               theSortedArray: IntTools_CArray1OfReal;
               theInitFlag: Standard_Integer) {.importcpp: "SetRanges",
    header: "IntTools_MarkedRangeSet.hxx".}
proc InsertRange*(this: var IntTools_MarkedRangeSet;
                 theFirstBoundary: Standard_Real; theLastBoundary: Standard_Real;
                 theFlag: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc InsertRange*(this: var IntTools_MarkedRangeSet; theRange: IntTools_Range;
                 theFlag: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc InsertRange*(this: var IntTools_MarkedRangeSet;
                 theFirstBoundary: Standard_Real; theLastBoundary: Standard_Real;
                 theFlag: Standard_Integer; theIndex: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc InsertRange*(this: var IntTools_MarkedRangeSet; theRange: IntTools_Range;
                 theFlag: Standard_Integer; theIndex: Standard_Integer): Standard_Boolean {.
    importcpp: "InsertRange", header: "IntTools_MarkedRangeSet.hxx".}
proc SetFlag*(this: var IntTools_MarkedRangeSet; theIndex: Standard_Integer;
             theFlag: Standard_Integer) {.importcpp: "SetFlag",
                                        header: "IntTools_MarkedRangeSet.hxx".}
proc Flag*(this: IntTools_MarkedRangeSet; theIndex: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Flag", header: "IntTools_MarkedRangeSet.hxx".}
proc GetIndex*(this: IntTools_MarkedRangeSet; theValue: Standard_Real): Standard_Integer {.
    noSideEffect, importcpp: "GetIndex", header: "IntTools_MarkedRangeSet.hxx".}
proc GetIndices*(this: var IntTools_MarkedRangeSet; theValue: Standard_Real): TColStd_SequenceOfInteger {.
    importcpp: "GetIndices", header: "IntTools_MarkedRangeSet.hxx".}
proc GetIndex*(this: IntTools_MarkedRangeSet; theValue: Standard_Real;
              UseLower: Standard_Boolean): Standard_Integer {.noSideEffect,
    importcpp: "GetIndex", header: "IntTools_MarkedRangeSet.hxx".}
proc Length*(this: IntTools_MarkedRangeSet): Standard_Integer {.noSideEffect,
    importcpp: "Length", header: "IntTools_MarkedRangeSet.hxx".}
proc Range*(this: IntTools_MarkedRangeSet; theIndex: Standard_Integer): IntTools_Range {.
    noSideEffect, importcpp: "Range", header: "IntTools_MarkedRangeSet.hxx".}