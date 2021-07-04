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

import
  XCAFPrs_Style, ../TDF/TDF_ChildIterator, ../TDF/TDF_Label,
  ../TopLoc/TopLoc_Location

## ! Structure defining document node.

type
  XCAFPrs_DocumentNode* {.importcpp: "XCAFPrs_DocumentNode",
                         header: "XCAFPrs_DocumentNode.hxx", bycopy.} = object ##  Methods for hash map
                                                                          ## ! Return hash code based on node string identifier.
    Id* {.importc: "Id".}: TCollection_AsciiString ## !< string identifier
    Label* {.importc: "Label".}: TDF_Label ## !< label in the document
    RefLabel* {.importc: "RefLabel".}: TDF_Label ## !< reference label in the document
    Style* {.importc: "Style".}: XCAFPrs_Style ## !< node style
    Location* {.importc: "Location".}: TopLoc_Location ## !< node global transformation
    LocalTrsf* {.importc: "LocalTrsf".}: TopLoc_Location ## !< node transformation relative to parent
    ChildIter* {.importc: "ChildIter".}: TDF_ChildIterator ## !< child iterator
    IsAssembly* {.importc: "IsAssembly".}: Standard_Boolean ## !< flag indicating that this label is assembly


proc constructXCAFPrs_DocumentNode*(): XCAFPrs_DocumentNode {.constructor,
    importcpp: "XCAFPrs_DocumentNode(@)", header: "XCAFPrs_DocumentNode.hxx".}
proc HashCode*(theNode: XCAFPrs_DocumentNode; theN: Standard_Integer): Standard_Integer {.
    importcpp: "XCAFPrs_DocumentNode::HashCode(@)",
    header: "XCAFPrs_DocumentNode.hxx".}
proc IsEqual*(theNode1: XCAFPrs_DocumentNode; theNode2: XCAFPrs_DocumentNode): Standard_Boolean {.
    importcpp: "XCAFPrs_DocumentNode::IsEqual(@)",
    header: "XCAFPrs_DocumentNode.hxx".}