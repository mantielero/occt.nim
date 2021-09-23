##  Created on: 1994-10-27
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_Transient, ../Standard/Standard_CString,
  ../TColStd/TColStd_HSequenceOfHAsciiString,
  ../TColStd/TColStd_HSequenceOfTransient, IFSelect_PrintCount,
  ../Standard/Standard_Transient, ../NCollection/NCollection_IndexedDataMap

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of IFSelect_SignatureList"
discard "forward decl of IFSelect_SignatureList"
type
  Handle_IFSelect_SignatureList* = handle[IFSelect_SignatureList]

## ! A SignatureList is given as result from a Counter (any kind)
## ! It gives access to a list of signatures, with counts, and
## ! optionally with list of corresponding entities
## !
## ! It can also be used only to give a signature, through SignOnly
## ! Mode. This can be useful for a specific counter (used in a
## ! Selection), while it remains better to use a Signature
## ! whenever possible

type
  IFSelect_SignatureList* {.importcpp: "IFSelect_SignatureList",
                           header: "IFSelect_SignatureList.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## SignatureList.
                                                                                                  ## If
                                                                                                  ## <withlist>
                                                                                                  ## is
                                                                                                  ## True,
                                                                                                  ## entities
                                                                                                  ## will
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## be
                                                                                                  ## not
                                                                                                  ## only
                                                                                                  ## counted
                                                                                                  ## per
                                                                                                  ## signature,
                                                                                                  ## but
                                                                                                  ## also
                                                                                                  ## listed.


proc constructIFSelect_SignatureList*(withlist: Standard_Boolean = Standard_False): IFSelect_SignatureList {.
    constructor, importcpp: "IFSelect_SignatureList(@)",
    header: "IFSelect_SignatureList.hxx".}
proc SetList*(this: var IFSelect_SignatureList; withlist: Standard_Boolean) {.
    importcpp: "SetList", header: "IFSelect_SignatureList.hxx".}
proc ModeSignOnly*(this: var IFSelect_SignatureList): var Standard_Boolean {.
    importcpp: "ModeSignOnly", header: "IFSelect_SignatureList.hxx".}
proc Clear*(this: var IFSelect_SignatureList) {.importcpp: "Clear",
    header: "IFSelect_SignatureList.hxx".}
proc Add*(this: var IFSelect_SignatureList; ent: handle[Standard_Transient];
         sign: Standard_CString) {.importcpp: "Add",
                                 header: "IFSelect_SignatureList.hxx".}
proc LastValue*(this: IFSelect_SignatureList): Standard_CString {.noSideEffect,
    importcpp: "LastValue", header: "IFSelect_SignatureList.hxx".}
proc Init*(this: var IFSelect_SignatureList; name: Standard_CString; count: NCollection_IndexedDataMap[
    TCollection_AsciiString, Standard_Integer]; list: NCollection_IndexedDataMap[
    TCollection_AsciiString, handle[Standard_Transient]]; nbnuls: Standard_Integer) {.
    importcpp: "Init", header: "IFSelect_SignatureList.hxx".}
proc List*(this: IFSelect_SignatureList; root: Standard_CString = ""): handle[
    TColStd_HSequenceOfHAsciiString] {.noSideEffect, importcpp: "List",
                                      header: "IFSelect_SignatureList.hxx".}
proc HasEntities*(this: IFSelect_SignatureList): Standard_Boolean {.noSideEffect,
    importcpp: "HasEntities", header: "IFSelect_SignatureList.hxx".}
proc NbNulls*(this: IFSelect_SignatureList): Standard_Integer {.noSideEffect,
    importcpp: "NbNulls", header: "IFSelect_SignatureList.hxx".}
proc NbTimes*(this: IFSelect_SignatureList; sign: Standard_CString): Standard_Integer {.
    noSideEffect, importcpp: "NbTimes", header: "IFSelect_SignatureList.hxx".}
proc Entities*(this: IFSelect_SignatureList; sign: Standard_CString): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "Entities",
                                   header: "IFSelect_SignatureList.hxx".}
proc SetName*(this: var IFSelect_SignatureList; name: Standard_CString) {.
    importcpp: "SetName", header: "IFSelect_SignatureList.hxx".}
proc Name*(this: IFSelect_SignatureList): Standard_CString {.noSideEffect,
    importcpp: "Name", header: "IFSelect_SignatureList.hxx".}
proc PrintCount*(this: IFSelect_SignatureList; S: var Standard_OStream) {.
    noSideEffect, importcpp: "PrintCount", header: "IFSelect_SignatureList.hxx".}
proc PrintList*(this: IFSelect_SignatureList; S: var Standard_OStream;
               model: handle[Interface_InterfaceModel];
               `mod`: IFSelect_PrintCount = IFSelect_ListByItem) {.noSideEffect,
    importcpp: "PrintList", header: "IFSelect_SignatureList.hxx".}
proc PrintSum*(this: IFSelect_SignatureList; S: var Standard_OStream) {.noSideEffect,
    importcpp: "PrintSum", header: "IFSelect_SignatureList.hxx".}
type
  IFSelect_SignatureListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignatureList::get_type_name(@)",
                              header: "IFSelect_SignatureList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignatureList::get_type_descriptor(@)",
    header: "IFSelect_SignatureList.hxx".}
proc DynamicType*(this: IFSelect_SignatureList): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SignatureList.hxx".}