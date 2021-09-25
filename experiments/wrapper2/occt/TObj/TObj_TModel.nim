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

discard "forward decl of TObj_Model"
discard "forward decl of TObj_TModel"
type
  TObjTModel* {.importcpp: "TObj_TModel", header: "TObj_TModel.hxx", bycopy.} = object of TDF_Attribute ## *
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


proc constructTObjTModel*(): TObjTModel {.constructor, importcpp: "TObj_TModel(@)",
                                       header: "TObj_TModel.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TModel::GetID(@)",
                           header: "TObj_TModel.hxx".}
proc id*(this: TObjTModel): StandardGUID {.noSideEffect, importcpp: "ID",
                                       header: "TObj_TModel.hxx".}
proc set*(this: var TObjTModel; theModel: Handle[TObjModel]) {.importcpp: "Set",
    header: "TObj_TModel.hxx".}
proc model*(this: TObjTModel): Handle[TObjModel] {.noSideEffect, importcpp: "Model",
    header: "TObj_TModel.hxx".}
proc newEmpty*(this: TObjTModel): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TModel.hxx".}
proc restore*(this: var TObjTModel; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TModel.hxx".}
proc paste*(this: TObjTModel; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TModel.hxx".}
type
  TObjTModelbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TModel::get_type_name(@)",
                            header: "TObj_TModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TModel::get_type_descriptor(@)", header: "TObj_TModel.hxx".}
proc dynamicType*(this: TObjTModel): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TModel.hxx".}
## ! Define handle class for TObj_TModel

discard "forward decl of TObj_TModel"
type
  HandleTObjTModel* = Handle[TObjTModel]

# when defined(_MSC_VER):
#   discard
