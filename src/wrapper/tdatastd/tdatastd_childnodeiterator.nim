import tdatastd_types
import ../standard/standard_types



##  Created on: 2000-01-26
##  Created by: Denis PASCAL
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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



proc newTDataStdChildNodeIterator*(): TDataStdChildNodeIterator {.cdecl,
    constructor, importcpp: "TDataStd_ChildNodeIterator(@)",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc newTDataStdChildNodeIterator*(aTreeNode: Handle[TDataStdTreeNode];
                                  allLevels: bool = false): TDataStdChildNodeIterator {.
    cdecl, constructor, importcpp: "TDataStd_ChildNodeIterator(@)",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc initialize*(this: var TDataStdChildNodeIterator;
                aTreeNode: Handle[TDataStdTreeNode]; allLevels: bool = false) {.cdecl,
    importcpp: "Initialize", header: "TDataStd_ChildNodeIterator.hxx".}
proc more*(this: TDataStdChildNodeIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "TDataStd_ChildNodeIterator.hxx".}
proc next*(this: var TDataStdChildNodeIterator) {.cdecl, importcpp: "Next",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc nextBrother*(this: var TDataStdChildNodeIterator) {.cdecl,
    importcpp: "NextBrother", header: "TDataStd_ChildNodeIterator.hxx".}
proc value*(this: TDataStdChildNodeIterator): Handle[TDataStdTreeNode] {.
    noSideEffect, cdecl, importcpp: "Value",
    header: "TDataStd_ChildNodeIterator.hxx".}

