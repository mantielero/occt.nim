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

discard "forward decl of Standard_GUID"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_TagSource"
discard "forward decl of TDF_Reference"
discard "forward decl of TDF_ClosureMode"
discard "forward decl of TDF_ClosureTool"
discard "forward decl of TDF_CopyTool"
discard "forward decl of TDF_CopyLabel"
discard "forward decl of TDF_ComparisonTool"
discard "forward decl of TDF_Transaction"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_AttributeDelta"
discard "forward decl of TDF_DeltaOnAddition"
discard "forward decl of TDF_DeltaOnForget"
discard "forward decl of TDF_DeltaOnResume"
discard "forward decl of TDF_DeltaOnRemoval"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDF_DefaultDeltaOnRemoval"
discard "forward decl of TDF_DefaultDeltaOnModification"
discard "forward decl of TDF_ChildIterator"
discard "forward decl of TDF_ChildIDIterator"
discard "forward decl of TDF_DataSet"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_Tool"
discard "forward decl of TDF_LabelMapHasher"
discard "forward decl of TDF_IDFilter"
type
  Tdf* {.importcpp: "TDF", header: "TDF.hxx", bycopy.} = object ## ! Returns ID
                                                        ## "00000000-0000-0000-0000-000000000000",
                                                        ## ! sometimes used as null ID.


proc lowestID*(): StandardGUID {.importcpp: "TDF::LowestID(@)", header: "TDF.hxx".}
proc uppestID*(): StandardGUID {.importcpp: "TDF::UppestID(@)", header: "TDF.hxx".}
proc addLinkGUIDToProgID*(id: StandardGUID; progID: TCollectionExtendedString) {.
    importcpp: "TDF::AddLinkGUIDToProgID(@)", header: "TDF.hxx".}
proc gUIDFromProgID*(progID: TCollectionExtendedString; id: var StandardGUID): bool {.
    importcpp: "TDF::GUIDFromProgID(@)", header: "TDF.hxx".}
proc progIDFromGUID*(id: StandardGUID; progID: var TCollectionExtendedString): bool {.
    importcpp: "TDF::ProgIDFromGUID(@)", header: "TDF.hxx".}
