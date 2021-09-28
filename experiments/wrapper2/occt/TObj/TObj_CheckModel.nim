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

## *
##  This class provides consistency check of the TObj model.
##  It collects all inconsistencies in the status bits and prepaires
##  messages to be sent using SendStatusMessages (SendMessages) method.
##  It supports also the fix mode, in which some inconsistencies are
##  corrected.
##

type
  TObjCheckModel* {.importcpp: "TObj_CheckModel", header: "TObj_CheckModel.hxx",
                   bycopy.} = object of MessageAlgorithm ## ! Initialize checker by model
                                                    ## ! Check References (and back references in model).
                                                    ## ! This method just tries to find object to that this reference is indicate and
                                                    ## ! test if that object is not null or not deleted. Also it test if that object has back
                                                    ## ! reference to correct object (object that has forward reference).
                                                    ## ! Declaration of CASCADE RTTI


proc constructTObjCheckModel*(theModel: Handle[TObjModel]): TObjCheckModel {.
    constructor, importcpp: "TObj_CheckModel(@)", header: "TObj_CheckModel.hxx".}
proc setToFix*(this: var TObjCheckModel; theToFix: bool) {.importcpp: "SetToFix",
    header: "TObj_CheckModel.hxx".}
proc isToFix*(this: TObjCheckModel): bool {.noSideEffect, importcpp: "IsToFix",
                                        header: "TObj_CheckModel.hxx".}
proc getModel*(this: TObjCheckModel): Handle[TObjModel] {.noSideEffect,
    importcpp: "GetModel", header: "TObj_CheckModel.hxx".}
proc destroyTObjCheckModel*(this: var TObjCheckModel) {.
    importcpp: "#.~TObj_CheckModel()", header: "TObj_CheckModel.hxx".}
proc perform*(this: var TObjCheckModel): bool {.importcpp: "Perform",
    header: "TObj_CheckModel.hxx".}
type
  TObjCheckModelbaseType* = MessageAlgorithm

proc getTypeName*(): cstring {.importcpp: "TObj_CheckModel::get_type_name(@)",
                            header: "TObj_CheckModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_CheckModel::get_type_descriptor(@)",
    header: "TObj_CheckModel.hxx".}
proc dynamicType*(this: TObjCheckModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_CheckModel.hxx".}
## ! Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of TObj_CheckModel"
type
  HandleC1C1* = Handle[TObjCheckModel]

# when defined(_MSC_VER):
#   discard

























