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

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
type
  TObjTObject* {.importcpp: "TObj_TObject", header: "TObj_TObject.hxx", bycopy.} = object of TDF_Attribute ##
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


proc constructTObjTObject*(): TObjTObject {.constructor,
    importcpp: "TObj_TObject(@)", header: "TObj_TObject.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TObject::GetID(@)",
                           header: "TObj_TObject.hxx".}
proc id*(this: TObjTObject): StandardGUID {.noSideEffect, importcpp: "ID",
                                        header: "TObj_TObject.hxx".}
proc set*(theLabel: TDF_Label; theElem: Handle[TObjObject]): Handle[TObjTObject] {.
    importcpp: "TObj_TObject::Set(@)", header: "TObj_TObject.hxx".}
proc set*(this: var TObjTObject; theElem: Handle[TObjObject]) {.importcpp: "Set",
    header: "TObj_TObject.hxx".}
proc get*(this: TObjTObject): Handle[TObjObject] {.noSideEffect, importcpp: "Get",
    header: "TObj_TObject.hxx".}
proc newEmpty*(this: TObjTObject): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TObject.hxx".}
proc restore*(this: var TObjTObject; theWith: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TObject.hxx".}
proc paste*(this: TObjTObject; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TObject.hxx".}
proc beforeForget*(this: var TObjTObject) {.importcpp: "BeforeForget",
                                        header: "TObj_TObject.hxx".}
proc afterUndo*(this: var TObjTObject; anAttDelta: Handle[TDF_AttributeDelta];
               forceIt: bool): bool {.importcpp: "AfterUndo",
                                   header: "TObj_TObject.hxx".}
type
  TObjTObjectbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TObject::get_type_name(@)",
                            header: "TObj_TObject.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TObject::get_type_descriptor(@)", header: "TObj_TObject.hxx".}
proc dynamicType*(this: TObjTObject): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TObject.hxx".}
## ! Define handle class for TObj_TObject

discard "forward decl of TObj_TObject"
type
  HandleTObjTObject* = Handle[TObjTObject]

# when defined(_MSC_VER):
#   discard
