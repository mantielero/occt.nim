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

discard "forward decl of IGESBasic_HArray1OfHArray1OfXYZ"
discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of IGESAppli_Node"
discard "forward decl of gp_XYZ"
discard "forward decl of IGESAppli_NodalDisplAndRot"
discard "forward decl of IGESAppli_NodalDisplAndRot"
type
  HandleC1C1* = Handle[IGESAppliNodalDisplAndRot]

## ! defines NodalDisplAndRot, Type <138> Form <0>
## ! in package IGESAppli
## ! Used to communicate finite element post processing
## ! data.

type
  IGESAppliNodalDisplAndRot* {.importcpp: "IGESAppli_NodalDisplAndRot",
                              header: "IGESAppli_NodalDisplAndRot.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESAppliNodalDisplAndRot*(): IGESAppliNodalDisplAndRot {.
    constructor, importcpp: "IGESAppli_NodalDisplAndRot(@)",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc init*(this: var IGESAppliNodalDisplAndRot;
          allNotes: Handle[IGESDimenHArray1OfGeneralNote];
          allIdentifiers: Handle[TColStdHArray1OfInteger];
          allNodes: Handle[IGESAppliHArray1OfNode];
          allRotParams: Handle[IGESBasicHArray1OfHArray1OfXYZ];
          allTransParams: Handle[IGESBasicHArray1OfHArray1OfXYZ]) {.
    importcpp: "Init", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc nbCases*(this: IGESAppliNodalDisplAndRot): cint {.noSideEffect,
    importcpp: "NbCases", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc nbNodes*(this: IGESAppliNodalDisplAndRot): cint {.noSideEffect,
    importcpp: "NbNodes", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc note*(this: IGESAppliNodalDisplAndRot; index: cint): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc nodeIdentifier*(this: IGESAppliNodalDisplAndRot; index: cint): cint {.
    noSideEffect, importcpp: "NodeIdentifier",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc node*(this: IGESAppliNodalDisplAndRot; index: cint): Handle[IGESAppliNode] {.
    noSideEffect, importcpp: "Node", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc translationParameter*(this: IGESAppliNodalDisplAndRot; nodeNum: cint;
                          caseNum: cint): Xyz {.noSideEffect,
    importcpp: "TranslationParameter", header: "IGESAppli_NodalDisplAndRot.hxx".}
proc rotationalParameter*(this: IGESAppliNodalDisplAndRot; nodeNum: cint;
                         caseNum: cint): Xyz {.noSideEffect,
    importcpp: "RotationalParameter", header: "IGESAppli_NodalDisplAndRot.hxx".}
type
  IGESAppliNodalDisplAndRotbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESAppli_NodalDisplAndRot::get_type_name(@)",
                            header: "IGESAppli_NodalDisplAndRot.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESAppli_NodalDisplAndRot::get_type_descriptor(@)",
    header: "IGESAppli_NodalDisplAndRot.hxx".}
proc dynamicType*(this: IGESAppliNodalDisplAndRot): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESAppli_NodalDisplAndRot.hxx".}

























