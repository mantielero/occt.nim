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

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESAppli_Node"
discard "forward decl of IGESAppli_NodalResults"
discard "forward decl of IGESAppli_NodalResults"
type
  HandleC1C1* = Handle[IGESAppliNodalResults]

## ! defines NodalResults, Type <146>
## ! in package IGESAppli
## ! Used to store the Analysis Data results per FEM Node

type
  IGESAppliNodalResults* {.importcpp: "IGESAppli_NodalResults",
                          header: "IGESAppli_NodalResults.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliNodalResults*(): IGESAppliNodalResults {.constructor,
    importcpp: "IGESAppli_NodalResults(@)", header: "IGESAppli_NodalResults.hxx".}
proc init*(this: var IGESAppliNodalResults; aNote: Handle[IGESDimenGeneralNote];
          aNumber: cint; aTime: cfloat;
          allNodeIdentifiers: Handle[TColStdHArray1OfInteger];
          allNodes: Handle[IGESAppliHArray1OfNode];
          allData: Handle[TColStdHArray2OfReal]) {.importcpp: "Init",
    header: "IGESAppli_NodalResults.hxx".}
proc setFormNumber*(this: var IGESAppliNodalResults; form: cint) {.
    importcpp: "SetFormNumber", header: "IGESAppli_NodalResults.hxx".}
proc note*(this: IGESAppliNodalResults): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESAppli_NodalResults.hxx".}
proc subCaseNumber*(this: IGESAppliNodalResults): cint {.noSideEffect,
    importcpp: "SubCaseNumber", header: "IGESAppli_NodalResults.hxx".}
proc time*(this: IGESAppliNodalResults): cfloat {.noSideEffect, importcpp: "Time",
    header: "IGESAppli_NodalResults.hxx".}
proc nbData*(this: IGESAppliNodalResults): cint {.noSideEffect, importcpp: "NbData",
    header: "IGESAppli_NodalResults.hxx".}
proc nbNodes*(this: IGESAppliNodalResults): cint {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_NodalResults.hxx".}
proc nodeIdentifier*(this: IGESAppliNodalResults; index: cint): cint {.noSideEffect,
    importcpp: "NodeIdentifier", header: "IGESAppli_NodalResults.hxx".}
proc node*(this: IGESAppliNodalResults; index: cint): Handle[IGESAppliNode] {.
    noSideEffect, importcpp: "Node", header: "IGESAppli_NodalResults.hxx".}
proc data*(this: IGESAppliNodalResults; nodeNum: cint; dataNum: cint): cfloat {.
    noSideEffect, importcpp: "Data", header: "IGESAppli_NodalResults.hxx".}
type
  IGESAppliNodalResultsbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_NodalResults::get_type_name(@)",
                            header: "IGESAppli_NodalResults.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_NodalResults::get_type_descriptor(@)",
    header: "IGESAppli_NodalResults.hxx".}
proc dynamicType*(this: IGESAppliNodalResults): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_NodalResults.hxx".}

























