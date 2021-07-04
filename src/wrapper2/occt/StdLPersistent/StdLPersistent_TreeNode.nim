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

import
  ../StdObjMgt/StdObjMgt_Attribute, ../TDataStd/TDataStd_TreeNode,
  ../Standard/Standard_GUID

type
  StdLPersistent_TreeNode* {.importcpp: "StdLPersistent_TreeNode",
                            header: "StdLPersistent_TreeNode.hxx", bycopy.} = object of Static[
      TDataStd_TreeNode]      ## ! Read persistent data from a file.


proc Read*(this: var StdLPersistent_TreeNode; theReadData: var StdObjMgt_ReadData) {.
    importcpp: "Read", header: "StdLPersistent_TreeNode.hxx".}
proc Write*(this: StdLPersistent_TreeNode; theWriteData: var StdObjMgt_WriteData) {.
    noSideEffect, importcpp: "Write", header: "StdLPersistent_TreeNode.hxx".}
proc PChildren*(this: StdLPersistent_TreeNode; a2: var SequenceOfPersistent) {.
    noSideEffect, importcpp: "PChildren", header: "StdLPersistent_TreeNode.hxx".}
proc PName*(this: StdLPersistent_TreeNode): Standard_CString {.noSideEffect,
    importcpp: "PName", header: "StdLPersistent_TreeNode.hxx".}
proc CreateAttribute*(this: var StdLPersistent_TreeNode): handle[TDF_Attribute] {.
    importcpp: "CreateAttribute", header: "StdLPersistent_TreeNode.hxx".}
proc ImportAttribute*(this: var StdLPersistent_TreeNode) {.
    importcpp: "ImportAttribute", header: "StdLPersistent_TreeNode.hxx".}