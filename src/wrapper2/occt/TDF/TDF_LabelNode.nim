##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

import
  ../TCollection/TCollection_AsciiString, TDF_Attribute, TDF_LabelNodePtr,
  TDF_HAllocator, ../NCollection/NCollection_DefineAlloc

discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_AttributeIterator"
discard "forward decl of TDF_ChildIterator"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Label"
const
  TDF_LabelNodeImportMsk* = cast[cint](0x80000000) ##  Because the sign bit (HP).
  TDF_LabelNodeAttModMsk* = 0x40000000
  TDF_LabelNodeMayModMsk* = 0x20000000
  TDF_LabelNodeFlagsMsk* = (
    TDF_LabelNodeImportMsk or TDF_LabelNodeAttModMsk or TDF_LabelNodeMayModMsk)

## =======================================================================
## class: TDF_LabelNode
## =======================================================================

type
  TDF_LabelNode* {.importcpp: "TDF_LabelNode", header: "TDF_LabelNode.hxx", bycopy.} = object ##  Public Methods
                                                                                      ##  --------------------------------------------------------------------------
                                                                                      ##  Father access
                                                                                      ##  Memory management
                                                                                      ##  Constructor
                                                                                      ##  Private Methods
                                                                                      ##  --------------------------------------------------------------------------
                                                                                      ##  Constructor
    ## jfa 10.01.2003
    ##  Flags & Depth
    when defined(OCCT_DEBUG):
      discard


proc Father*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect,
    importcpp: "Father", header: "TDF_LabelNode.hxx".}
proc Brother*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect,
    importcpp: "Brother", header: "TDF_LabelNode.hxx".}
proc FirstChild*(this: TDF_LabelNode): ptr TDF_LabelNode {.noSideEffect,
    importcpp: "FirstChild", header: "TDF_LabelNode.hxx".}
proc FirstAttribute*(this: TDF_LabelNode): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "FirstAttribute", header: "TDF_LabelNode.hxx".}
proc Tag*(this: TDF_LabelNode): Standard_Integer {.noSideEffect, importcpp: "Tag",
    header: "TDF_LabelNode.hxx".}
proc Depth*(this: TDF_LabelNode): Standard_Integer {.noSideEffect,
    importcpp: "Depth", header: "TDF_LabelNode.hxx".}
proc IsRoot*(this: TDF_LabelNode): Standard_Boolean {.noSideEffect,
    importcpp: "IsRoot", header: "TDF_LabelNode.hxx".}
proc Data*(this: TDF_LabelNode): ptr TDF_Data {.noSideEffect, importcpp: "Data",
    header: "TDF_LabelNode.hxx".}
proc AttributesModified*(this: var TDF_LabelNode; aStatus: Standard_Boolean) {.
    importcpp: "AttributesModified", header: "TDF_LabelNode.hxx".}
proc AttributesModified*(this: TDF_LabelNode): Standard_Boolean {.noSideEffect,
    importcpp: "AttributesModified", header: "TDF_LabelNode.hxx".}
proc MayBeModified*(this: var TDF_LabelNode; aStatus: Standard_Boolean) {.
    importcpp: "MayBeModified", header: "TDF_LabelNode.hxx".}
proc MayBeModified*(this: TDF_LabelNode): Standard_Boolean {.noSideEffect,
    importcpp: "MayBeModified", header: "TDF_LabelNode.hxx".}