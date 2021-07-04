##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun  MENON )
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../TColStd/TColStd_HArray1OfInteger,
  IGESAppli_HArray1OfNode, ../TColStd/TColStd_HArray2OfReal,
  ../IGESData/IGESData_IGESEntity

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_NodalResults"
discard "forward decl of IGESAppli_NodalResults"
type
  Handle_IGESAppli_NodalResults* = handle[IGESAppli_NodalResults]

## ! defines NodalResults, Type <146>
## ! in package IGESAppli
## ! Used to store the Analysis Data results per FEM Node

type
  IGESAppli_NodalResults* {.importcpp: "IGESAppli_NodalResults",
                           header: "IGESAppli_NodalResults.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_NodalResults*(): IGESAppli_NodalResults {.constructor,
    importcpp: "IGESAppli_NodalResults(@)", header: "IGESAppli_NodalResults.hxx".}
proc Init*(this: var IGESAppli_NodalResults; aNote: handle[IGESDimen_GeneralNote];
          aNumber: Standard_Integer; aTime: Standard_Real;
          allNodeIdentifiers: handle[TColStd_HArray1OfInteger];
          allNodes: handle[IGESAppli_HArray1OfNode];
          allData: handle[TColStd_HArray2OfReal]) {.importcpp: "Init",
    header: "IGESAppli_NodalResults.hxx".}
proc SetFormNumber*(this: var IGESAppli_NodalResults; form: Standard_Integer) {.
    importcpp: "SetFormNumber", header: "IGESAppli_NodalResults.hxx".}
proc Note*(this: IGESAppli_NodalResults): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESAppli_NodalResults.hxx".}
proc SubCaseNumber*(this: IGESAppli_NodalResults): Standard_Integer {.noSideEffect,
    importcpp: "SubCaseNumber", header: "IGESAppli_NodalResults.hxx".}
proc Time*(this: IGESAppli_NodalResults): Standard_Real {.noSideEffect,
    importcpp: "Time", header: "IGESAppli_NodalResults.hxx".}
proc NbData*(this: IGESAppli_NodalResults): Standard_Integer {.noSideEffect,
    importcpp: "NbData", header: "IGESAppli_NodalResults.hxx".}
proc NbNodes*(this: IGESAppli_NodalResults): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_NodalResults.hxx".}
proc NodeIdentifier*(this: IGESAppli_NodalResults; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NodeIdentifier", header: "IGESAppli_NodalResults.hxx".}
proc Node*(this: IGESAppli_NodalResults; Index: Standard_Integer): handle[
    IGESAppli_Node] {.noSideEffect, importcpp: "Node",
                     header: "IGESAppli_NodalResults.hxx".}
proc Data*(this: IGESAppli_NodalResults; NodeNum: Standard_Integer;
          DataNum: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "Data", header: "IGESAppli_NodalResults.hxx".}
type
  IGESAppli_NodalResultsbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_NodalResults::get_type_name(@)",
                              header: "IGESAppli_NodalResults.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_NodalResults::get_type_descriptor(@)",
    header: "IGESAppli_NodalResults.hxx".}
proc DynamicType*(this: IGESAppli_NodalResults): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESAppli_NodalResults.hxx".}