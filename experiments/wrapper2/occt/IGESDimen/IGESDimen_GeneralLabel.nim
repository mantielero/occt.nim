##  Created on: 1993-01-13
##  Created by: CKY / Contract Toubro-Larsen ( Deepak PRABHU )
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
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_GeneralLabel"
discard "forward decl of IGESDimen_GeneralLabel"
type
  HandleIGESDimenGeneralLabel* = Handle[IGESDimenGeneralLabel]

## ! defines GeneralLabel, Type <210> Form <0>
## ! in package IGESDimen
## ! Used for general labeling with leaders

type
  IGESDimenGeneralLabel* {.importcpp: "IGESDimen_GeneralLabel",
                          header: "IGESDimen_GeneralLabel.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESDimenGeneralLabel*(): IGESDimenGeneralLabel {.constructor,
    importcpp: "IGESDimen_GeneralLabel(@)", header: "IGESDimen_GeneralLabel.hxx".}
proc init*(this: var IGESDimenGeneralLabel; aNote: Handle[IGESDimenGeneralNote];
          someLeaders: Handle[IGESDimenHArray1OfLeaderArrow]) {.importcpp: "Init",
    header: "IGESDimen_GeneralLabel.hxx".}
proc note*(this: IGESDimenGeneralLabel): Handle[IGESDimenGeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_GeneralLabel.hxx".}
proc nbLeaders*(this: IGESDimenGeneralLabel): int {.noSideEffect,
    importcpp: "NbLeaders", header: "IGESDimen_GeneralLabel.hxx".}
proc leader*(this: IGESDimenGeneralLabel; index: int): Handle[IGESDimenLeaderArrow] {.
    noSideEffect, importcpp: "Leader", header: "IGESDimen_GeneralLabel.hxx".}
type
  IGESDimenGeneralLabelbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESDimen_GeneralLabel::get_type_name(@)",
                            header: "IGESDimen_GeneralLabel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_GeneralLabel::get_type_descriptor(@)",
    header: "IGESDimen_GeneralLabel.hxx".}
proc dynamicType*(this: IGESDimenGeneralLabel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_GeneralLabel.hxx".}
