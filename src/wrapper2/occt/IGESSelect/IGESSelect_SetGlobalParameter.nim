##  Created on: 1994-06-01
##  Created by: Modelistation
##  Copyright (c) 1994-1999 Matra Datavision
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
  IGESSelect_ModelModifier

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SetGlobalParameter"
discard "forward decl of IGESSelect_SetGlobalParameter"
type
  Handle_IGESSelect_SetGlobalParameter* = handle[IGESSelect_SetGlobalParameter]

## ! Sets a Global (Header) Parameter to a new value, directly given
## ! Controls the form of the parameter (Integer, Real, String
## ! with such or such form), but not the consistence of the new
## ! value regarding the rest of the file.
## !
## ! The new value is given under the form of a HAsciiString, even
## ! for Integer or Real values. For String values, Hollerith forms
## ! are accepted but not mandatory
## ! Warning : a Null (not set) value is not accepted. For an empty string,
## ! give a Text Parameter which is empty

type
  IGESSelect_SetGlobalParameter* {.importcpp: "IGESSelect_SetGlobalParameter",
                                  header: "IGESSelect_SetGlobalParameter.hxx",
                                  bycopy.} = object of IGESSelect_ModelModifier ## !
                                                                           ## Creates an
                                                                           ## SetGlobalParameter, to be
                                                                           ## applied on
                                                                           ## Global
                                                                           ## !
                                                                           ## Parameter
                                                                           ## <numpar>


proc constructIGESSelect_SetGlobalParameter*(numpar: Standard_Integer): IGESSelect_SetGlobalParameter {.
    constructor, importcpp: "IGESSelect_SetGlobalParameter(@)",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc GlobalNumber*(this: IGESSelect_SetGlobalParameter): Standard_Integer {.
    noSideEffect, importcpp: "GlobalNumber",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc SetValue*(this: var IGESSelect_SetGlobalParameter;
              text: handle[TCollection_HAsciiString]) {.importcpp: "SetValue",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc Value*(this: IGESSelect_SetGlobalParameter): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_SetGlobalParameter.hxx".}
proc Performing*(this: IGESSelect_SetGlobalParameter;
                ctx: var IFSelect_ContextModif; target: handle[IGESData_IGESModel];
                TC: var Interface_CopyTool) {.noSideEffect, importcpp: "Performing",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc Label*(this: IGESSelect_SetGlobalParameter): TCollection_AsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SetGlobalParameter.hxx".}
type
  IGESSelect_SetGlobalParameterbase_type* = IGESSelect_ModelModifier

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SetGlobalParameter::get_type_name(@)",
                              header: "IGESSelect_SetGlobalParameter.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SetGlobalParameter::get_type_descriptor(@)",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc DynamicType*(this: IGESSelect_SetGlobalParameter): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SetGlobalParameter.hxx".}