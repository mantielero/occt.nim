##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Arun MENON )
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IGESDimen/IGESDimen_HArray1OfGeneralNote,
  ../TColStd/TColStd_HArray1OfInteger, IGESAppli_HArray1OfNode,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESBasic_HArray1OfHArray1OfXYZ"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESAppli_Node"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESAppli_NodalDisplAndRot"
discard "forward decl of IGESAppli_NodalDisplAndRot"
type
  Handle_IGESAppli_NodalDisplAndRot* = handle[IGESAppli_NodalDisplAndRot]

## ! defines NodalDisplAndRot, Type <138> Form <0>
## ! in package IGESAppli
## ! Used to communicate finite element post processing
## ! data.

type
  IGESAppli_NodalDisplAndRot* {.importcpp: "IGESAppli_NodalDisplAndRot",
                               header: "IGESAppli_NodalDisplAndRot.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESAppli_NodalDisplAndRot*(): IGESAppli_NodalDisplAndRot {.
    constructor, importcpp: "IGESAppli_NodalDisplAndRot(@)",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc Init*(this: var IGESAppli_NodalDisplAndRot;
          allNotes: handle[IGESDimen_HArray1OfGeneralNote];
          allIdentifiers: handle[TColStd_HArray1OfInteger];
          allNodes: handle[IGESAppli_HArray1OfNode];
          allRotParams: handle[IGESBasic_HArray1OfHArray1OfXYZ];
          allTransParams: handle[IGESBasic_HArray1OfHArray1OfXYZ]) {.
    importcpp: "Init", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc NbCases*(this: IGESAppli_NodalDisplAndRot): Standard_Integer {.noSideEffect,
    importcpp: "NbCases", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc NbNodes*(this: IGESAppli_NodalDisplAndRot): Standard_Integer {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc Note*(this: IGESAppli_NodalDisplAndRot; Index: Standard_Integer): handle[
    IGESDimen_GeneralNote] {.noSideEffect, importcpp: "Note",
                            header: "IGESAppli_NodalDisplAndRot.hxx".}
proc NodeIdentifier*(this: IGESAppli_NodalDisplAndRot; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NodeIdentifier",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc Node*(this: IGESAppli_NodalDisplAndRot; Index: Standard_Integer): handle[
    IGESAppli_Node] {.noSideEffect, importcpp: "Node",
                     header: "IGESAppli_NodalDisplAndRot.hxx".}
proc TranslationParameter*(this: IGESAppli_NodalDisplAndRot;
                          NodeNum: Standard_Integer; CaseNum: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "TranslationParameter",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc RotationalParameter*(this: IGESAppli_NodalDisplAndRot;
                         NodeNum: Standard_Integer; CaseNum: Standard_Integer): gp_XYZ {.
    noSideEffect, importcpp: "RotationalParameter",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
type
  IGESAppli_NodalDisplAndRotbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESAppli_NodalDisplAndRot::get_type_name(@)",
                              header: "IGESAppli_NodalDisplAndRot.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_NodalDisplAndRot::get_type_descriptor(@)",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc DynamicType*(this: IGESAppli_NodalDisplAndRot): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_NodalDisplAndRot.hxx".}