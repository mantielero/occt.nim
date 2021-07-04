##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../TDF/TDF_Attribute

discard "forward decl of TObj_Model"
discard "forward decl of TObj_TModel"
type
  TObj_TModel* {.importcpp: "TObj_TModel", header: "TObj_TModel.hxx", bycopy.} = object of TDF_Attribute ## *
                                                                                               ##  Standard methods of attribute
                                                                                               ##
                                                                                               ## ! Empty constructor
                                                                                               ## ! Methods for setting and obtaining the Model object
                                                                                               ## ! Sets the the Model object
                                                                                               ## ! Redefined OCAF abstract methods
                                                                                               ## ! Returns an new empty TObj_TModel attribute. It is used by the
                                                                                               ## ! copy algorithm.
                                                                                               ## ! Fields
                                                                                               ## ! CASCADE RTTI
    ## !< The Model object stored by the attribute


proc constructTObj_TModel*(): TObj_TModel {.constructor,
    importcpp: "TObj_TModel(@)", header: "TObj_TModel.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TModel::GetID(@)",
                            header: "TObj_TModel.hxx".}
proc ID*(this: TObj_TModel): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TModel.hxx".}
proc Set*(this: var TObj_TModel; theModel: handle[TObj_Model]) {.importcpp: "Set",
    header: "TObj_TModel.hxx".}
proc Model*(this: TObj_TModel): handle[TObj_Model] {.noSideEffect,
    importcpp: "Model", header: "TObj_TModel.hxx".}
proc NewEmpty*(this: TObj_TModel): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TModel.hxx".}
proc Restore*(this: var TObj_TModel; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TModel.hxx".}
proc Paste*(this: TObj_TModel; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TModel.hxx".}
type
  TObj_TModelbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TModel::get_type_name(@)",
                              header: "TObj_TModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TModel::get_type_descriptor(@)", header: "TObj_TModel.hxx".}
proc DynamicType*(this: TObj_TModel): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TModel.hxx".}
## ! Define handle class for TObj_TModel

discard "forward decl of TObj_TModel"
type
  Handle_TObj_TModel* = handle[TObj_TModel]

when defined(_MSC_VER):
  discard