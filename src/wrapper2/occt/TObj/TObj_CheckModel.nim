##  Created on: 2007-04-17
##  Created by: Michael Sazonov
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

import
  TObj_Common, TObj_Model, ../Message/Message_Algorithm

## *
##  This class provides consistency check of the TObj model.
##  It collects all inconsistencies in the status bits and prepaires
##  messages to be sent using SendStatusMessages (SendMessages) method.
##  It supports also the fix mode, in which some inconsistencies are
##  corrected.
##

type
  TObj_CheckModel* {.importcpp: "TObj_CheckModel", header: "TObj_CheckModel.hxx",
                    bycopy.} = object of Message_Algorithm ## ! Initialize checker by model
                                                      ## ! Check References (and back references in model).
                                                      ## ! This method just tries to find object to that this reference is indicate and
                                                      ## ! test if that object is not null or not deleted. Also it test if that object has back
                                                      ## ! reference to correct object (object that has forward reference).
                                                      ## ! Declaration of CASCADE RTTI


proc constructTObj_CheckModel*(theModel: handle[TObj_Model]): TObj_CheckModel {.
    constructor, importcpp: "TObj_CheckModel(@)", header: "TObj_CheckModel.hxx".}
proc SetToFix*(this: var TObj_CheckModel; theToFix: Standard_Boolean) {.
    importcpp: "SetToFix", header: "TObj_CheckModel.hxx".}
proc IsToFix*(this: TObj_CheckModel): Standard_Boolean {.noSideEffect,
    importcpp: "IsToFix", header: "TObj_CheckModel.hxx".}
proc GetModel*(this: TObj_CheckModel): handle[TObj_Model] {.noSideEffect,
    importcpp: "GetModel", header: "TObj_CheckModel.hxx".}
proc destroyTObj_CheckModel*(this: var TObj_CheckModel) {.
    importcpp: "#.~TObj_CheckModel()", header: "TObj_CheckModel.hxx".}
proc Perform*(this: var TObj_CheckModel): Standard_Boolean {.importcpp: "Perform",
    header: "TObj_CheckModel.hxx".}
type
  TObj_CheckModelbase_type* = Message_Algorithm

proc get_type_name*(): cstring {.importcpp: "TObj_CheckModel::get_type_name(@)",
                              header: "TObj_CheckModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_CheckModel::get_type_descriptor(@)",
    header: "TObj_CheckModel.hxx".}
proc DynamicType*(this: TObj_CheckModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_CheckModel.hxx".}
## ! Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of TObj_CheckModel"
type
  Handle_TObj_CheckModel* = handle[TObj_CheckModel]

when defined(_MSC_VER):
  discard