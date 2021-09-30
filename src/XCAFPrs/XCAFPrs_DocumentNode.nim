##  Author: Kirill Gavrilov
##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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

## ! Structure defining document node.

type
  XCAFPrsDocumentNode* {.importcpp: "XCAFPrs_DocumentNode",
                        header: "XCAFPrs_DocumentNode.hxx", bycopy.} = object ##  Methods for hash map
                                                                         ## ! Return hash code based on node string identifier.
    id* {.importc: "Id".}: TCollectionAsciiString ## !< string identifier
    label* {.importc: "Label".}: TDF_Label ## !< label in the document
    refLabel* {.importc: "RefLabel".}: TDF_Label ## !< reference label in the document
    style* {.importc: "Style".}: XCAFPrsStyle ## !< node style
    location* {.importc: "Location".}: TopLocLocation ## !< node global transformation
    localTrsf* {.importc: "LocalTrsf".}: TopLocLocation ## !< node transformation relative to parent
    childIter* {.importc: "ChildIter".}: TDF_ChildIterator ## !< child iterator
    isAssembly* {.importc: "IsAssembly".}: bool ## !< flag indicating that this label is assembly


proc constructXCAFPrsDocumentNode*(): XCAFPrsDocumentNode {.constructor,
    importcpp: "XCAFPrs_DocumentNode(@)", header: "XCAFPrs_DocumentNode.hxx".}
proc hashCode*(theNode: XCAFPrsDocumentNode; theN: int): int {.
    importcpp: "XCAFPrs_DocumentNode::HashCode(@)",
    header: "XCAFPrs_DocumentNode.hxx".}
proc isEqual*(theNode1: XCAFPrsDocumentNode; theNode2: XCAFPrsDocumentNode): bool {.
    importcpp: "XCAFPrs_DocumentNode::IsEqual(@)",
    header: "XCAFPrs_DocumentNode.hxx".}














































