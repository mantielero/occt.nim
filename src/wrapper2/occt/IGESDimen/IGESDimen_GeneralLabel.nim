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

import
  ../Standard/Standard, ../Standard/Standard_Type, IGESDimen_HArray1OfLeaderArrow,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Integer

discard "forward decl of IGESDimen_GeneralNote"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of IGESDimen_LeaderArrow"
discard "forward decl of IGESDimen_GeneralLabel"
discard "forward decl of IGESDimen_GeneralLabel"
type
  Handle_IGESDimen_GeneralLabel* = handle[IGESDimen_GeneralLabel]

## ! defines GeneralLabel, Type <210> Form <0>
## ! in package IGESDimen
## ! Used for general labeling with leaders

type
  IGESDimen_GeneralLabel* {.importcpp: "IGESDimen_GeneralLabel",
                           header: "IGESDimen_GeneralLabel.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESDimen_GeneralLabel*(): IGESDimen_GeneralLabel {.constructor,
    importcpp: "IGESDimen_GeneralLabel(@)", header: "IGESDimen_GeneralLabel.hxx".}
proc Init*(this: var IGESDimen_GeneralLabel; aNote: handle[IGESDimen_GeneralNote];
          someLeaders: handle[IGESDimen_HArray1OfLeaderArrow]) {.
    importcpp: "Init", header: "IGESDimen_GeneralLabel.hxx".}
proc Note*(this: IGESDimen_GeneralLabel): handle[IGESDimen_GeneralNote] {.
    noSideEffect, importcpp: "Note", header: "IGESDimen_GeneralLabel.hxx".}
proc NbLeaders*(this: IGESDimen_GeneralLabel): Standard_Integer {.noSideEffect,
    importcpp: "NbLeaders", header: "IGESDimen_GeneralLabel.hxx".}
proc Leader*(this: IGESDimen_GeneralLabel; Index: Standard_Integer): handle[
    IGESDimen_LeaderArrow] {.noSideEffect, importcpp: "Leader",
                            header: "IGESDimen_GeneralLabel.hxx".}
type
  IGESDimen_GeneralLabelbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESDimen_GeneralLabel::get_type_name(@)",
                              header: "IGESDimen_GeneralLabel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDimen_GeneralLabel::get_type_descriptor(@)",
    header: "IGESDimen_GeneralLabel.hxx".}
proc DynamicType*(this: IGESDimen_GeneralLabel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESDimen_GeneralLabel.hxx".}