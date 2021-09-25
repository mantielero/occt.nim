##  Created on: 1999-07-12
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TDocStd_Document"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDocStd_Owner"
discard "forward decl of TDocStd_Owner"
type
  HandleTDocStdOwner* = Handle[TDocStdOwner]

## ! This  attribute located  at  the  root label  of the
## ! framework contains  a   back reference to   the  owner
## ! TDocStd_Document, providing acces to the document from
## ! any label.  private class Owner;

type
  TDocStdOwner* {.importcpp: "TDocStd_Owner", header: "TDocStd_Owner.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                                    ## !
                                                                                                    ## class
                                                                                                    ## methods
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## =============
                                                                                                    ##
                                                                                                    ## !
                                                                                                    ## It
                                                                                                    ## keeps
                                                                                                    ## pointer
                                                                                                    ## to
                                                                                                    ## the
                                                                                                    ## document
                                                                                                    ## to
                                                                                                    ## avoid
                                                                                                    ## handles
                                                                                                    ## cyclic
                                                                                                    ## dependency


proc getID*(): StandardGUID {.importcpp: "TDocStd_Owner::GetID(@)",
                           header: "TDocStd_Owner.hxx".}
proc setDocument*(indata: Handle[TDF_Data]; doc: Handle[TDocStdDocument]) {.
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc setDocument*(indata: Handle[TDF_Data]; doc: ptr TDocStdDocument) {.
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc getDocument*(ofdata: Handle[TDF_Data]): Handle[TDocStdDocument] {.
    importcpp: "TDocStd_Owner::GetDocument(@)", header: "TDocStd_Owner.hxx".}
proc constructTDocStdOwner*(): TDocStdOwner {.constructor,
    importcpp: "TDocStd_Owner(@)", header: "TDocStd_Owner.hxx".}
proc setDocument*(this: var TDocStdOwner; document: Handle[TDocStdDocument]) {.
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc setDocument*(this: var TDocStdOwner; document: ptr TDocStdDocument) {.
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc getDocument*(this: TDocStdOwner): Handle[TDocStdDocument] {.noSideEffect,
    importcpp: "GetDocument", header: "TDocStd_Owner.hxx".}
proc id*(this: TDocStdOwner): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDocStd_Owner.hxx".}
proc restore*(this: var TDocStdOwner; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDocStd_Owner.hxx".}
proc newEmpty*(this: TDocStdOwner): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDocStd_Owner.hxx".}
proc paste*(this: TDocStdOwner; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDocStd_Owner.hxx".}
proc dump*(this: TDocStdOwner; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDocStd_Owner.hxx".}
proc dumpJson*(this: TDocStdOwner; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDocStd_Owner.hxx".}
type
  TDocStdOwnerbaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDocStd_Owner::get_type_name(@)",
                            header: "TDocStd_Owner.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDocStd_Owner::get_type_descriptor(@)",
    header: "TDocStd_Owner.hxx".}
proc dynamicType*(this: TDocStdOwner): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDocStd_Owner.hxx".}
