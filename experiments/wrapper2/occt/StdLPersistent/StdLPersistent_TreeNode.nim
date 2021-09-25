##  Copyright (c) 2015 OPEN CASCADE SAS
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

type
  StdLPersistentTreeNode* {.importcpp: "StdLPersistent_TreeNode",
                           header: "StdLPersistent_TreeNode.hxx", bycopy.} = object of Static[
      TDataStdTreeNode]       ## ! Read persistent data from a file.


proc read*(this: var StdLPersistentTreeNode; theReadData: var StdObjMgtReadData) {.
    importcpp: "Read", header: "StdLPersistent_TreeNode.hxx".}
proc write*(this: StdLPersistentTreeNode; theWriteData: var StdObjMgtWriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_TreeNode.hxx".}
proc pChildren*(this: StdLPersistentTreeNode; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_TreeNode.hxx".}
proc pName*(this: StdLPersistentTreeNode): StandardCString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_TreeNode.hxx".}
proc createAttribute*(this: var StdLPersistentTreeNode): Handle[TDF_Attribute] {.
    importcpp: "CreateAttribute", header: "StdLPersistent_TreeNode.hxx".}
proc importAttribute*(this: var StdLPersistentTreeNode) {.
    importcpp: "ImportAttribute", header: "StdLPersistent_TreeNode.hxx".}
