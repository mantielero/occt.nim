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
  TObj_Common, TObj_Object, ../TDF/TDF_Attribute

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
type
  TObj_TObject* {.importcpp: "TObj_TObject", header: "TObj_TObject.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                  ## !
                                                                                                  ## Standard
                                                                                                  ## methods
                                                                                                  ## of
                                                                                                  ## OCAF
                                                                                                  ## attribute
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Empty
                                                                                                  ## constructor
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Method
                                                                                                  ## for
                                                                                                  ## create
                                                                                                  ## TObj_TObject
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## TObj_TObject
                                                                                                  ## attribute
                                                                                                  ## on
                                                                                                  ## given
                                                                                                  ## label
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Methods
                                                                                                  ## for
                                                                                                  ## setting
                                                                                                  ## and
                                                                                                  ## obtaining
                                                                                                  ## TObj_Object
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Sets
                                                                                                  ## the
                                                                                                  ## TObj_Object
                                                                                                  ## object
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Redefined
                                                                                                  ## OCAF
                                                                                                  ## abstract
                                                                                                  ## methods
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## an
                                                                                                  ## new
                                                                                                  ## empty
                                                                                                  ## TObj_TObject
                                                                                                  ## attribute.
                                                                                                  ## It
                                                                                                  ## is
                                                                                                  ## used
                                                                                                  ## by
                                                                                                  ## the
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## copy
                                                                                                  ## algorithm.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Fields
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## CASCADE
                                                                                                  ## RTTI
    ## !< The object interface stored by the attribute


proc constructTObj_TObject*(): TObj_TObject {.constructor,
    importcpp: "TObj_TObject(@)", header: "TObj_TObject.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TObject::GetID(@)",
                            header: "TObj_TObject.hxx".}
proc ID*(this: TObj_TObject): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TObject.hxx".}
proc Set*(theLabel: TDF_Label; theElem: handle[TObj_Object]): handle[TObj_TObject] {.
    importcpp: "TObj_TObject::Set(@)", header: "TObj_TObject.hxx".}
proc Set*(this: var TObj_TObject; theElem: handle[TObj_Object]) {.importcpp: "Set",
    header: "TObj_TObject.hxx".}
proc Get*(this: TObj_TObject): handle[TObj_Object] {.noSideEffect, importcpp: "Get",
    header: "TObj_TObject.hxx".}
proc NewEmpty*(this: TObj_TObject): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TObject.hxx".}
proc Restore*(this: var TObj_TObject; theWith: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TObject.hxx".}
proc Paste*(this: TObj_TObject; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TObject.hxx".}
proc BeforeForget*(this: var TObj_TObject) {.importcpp: "BeforeForget",
    header: "TObj_TObject.hxx".}
proc AfterUndo*(this: var TObj_TObject; anAttDelta: handle[TDF_AttributeDelta];
               forceIt: Standard_Boolean): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TObj_TObject.hxx".}
type
  TObj_TObjectbase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TObject::get_type_name(@)",
                              header: "TObj_TObject.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TObject::get_type_descriptor(@)", header: "TObj_TObject.hxx".}
proc DynamicType*(this: TObj_TObject): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TObject.hxx".}
## ! Define handle class for TObj_TObject

discard "forward decl of TObj_TObject"
type
  Handle_TObj_TObject* = handle[TObj_TObject]

when defined(_MSC_VER):
  discard