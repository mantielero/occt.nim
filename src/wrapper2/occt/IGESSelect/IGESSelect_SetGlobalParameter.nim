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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of IGESData_IGESModel"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SetGlobalParameter"
discard "forward decl of IGESSelect_SetGlobalParameter"
type
  HandleIGESSelectSetGlobalParameter* = Handle[IGESSelectSetGlobalParameter]

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
  IGESSelectSetGlobalParameter* {.importcpp: "IGESSelect_SetGlobalParameter",
                                 header: "IGESSelect_SetGlobalParameter.hxx",
                                 bycopy.} = object of IGESSelectModelModifier ## ! Creates an
                                                                         ## SetGlobalParameter, to be applied on Global
                                                                         ## !
                                                                         ## Parameter
                                                                         ## <numpar>


proc constructIGESSelectSetGlobalParameter*(numpar: StandardInteger): IGESSelectSetGlobalParameter {.
    constructor, importcpp: "IGESSelect_SetGlobalParameter(@)",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc globalNumber*(this: IGESSelectSetGlobalParameter): StandardInteger {.
    noSideEffect, importcpp: "GlobalNumber",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc setValue*(this: var IGESSelectSetGlobalParameter;
              text: Handle[TCollectionHAsciiString]) {.importcpp: "SetValue",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc value*(this: IGESSelectSetGlobalParameter): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_SetGlobalParameter.hxx".}
proc performing*(this: IGESSelectSetGlobalParameter; ctx: var IFSelectContextModif;
                target: Handle[IGESDataIGESModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc label*(this: IGESSelectSetGlobalParameter): TCollectionAsciiString {.
    noSideEffect, importcpp: "Label", header: "IGESSelect_SetGlobalParameter.hxx".}
type
  IGESSelectSetGlobalParameterbaseType* = IGESSelectModelModifier

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SetGlobalParameter::get_type_name(@)",
                            header: "IGESSelect_SetGlobalParameter.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SetGlobalParameter::get_type_descriptor(@)",
    header: "IGESSelect_SetGlobalParameter.hxx".}
proc dynamicType*(this: IGESSelectSetGlobalParameter): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSelect_SetGlobalParameter.hxx".}

