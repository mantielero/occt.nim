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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of TDataStd_TreeNode"
type
  TDataStd_ChildNodeIterator* {.importcpp: "TDataStd_ChildNodeIterator",
                               header: "TDataStd_ChildNodeIterator.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## iterator.


proc constructTDataStd_ChildNodeIterator*(): TDataStd_ChildNodeIterator {.
    constructor, importcpp: "TDataStd_ChildNodeIterator(@)",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc constructTDataStd_ChildNodeIterator*(aTreeNode: handle[TDataStd_TreeNode];
    allLevels: Standard_Boolean = Standard_False): TDataStd_ChildNodeIterator {.
    constructor, importcpp: "TDataStd_ChildNodeIterator(@)",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc Initialize*(this: var TDataStd_ChildNodeIterator;
                aTreeNode: handle[TDataStd_TreeNode];
                allLevels: Standard_Boolean = Standard_False) {.
    importcpp: "Initialize", header: "TDataStd_ChildNodeIterator.hxx".}
proc More*(this: TDataStd_ChildNodeIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TDataStd_ChildNodeIterator.hxx".}
proc Next*(this: var TDataStd_ChildNodeIterator) {.importcpp: "Next",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc NextBrother*(this: var TDataStd_ChildNodeIterator) {.importcpp: "NextBrother",
    header: "TDataStd_ChildNodeIterator.hxx".}
proc Value*(this: TDataStd_ChildNodeIterator): handle[TDataStd_TreeNode] {.
    noSideEffect, importcpp: "Value", header: "TDataStd_ChildNodeIterator.hxx".}