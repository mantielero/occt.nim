##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean, TDF_IDMap, TDF_IDList,
  ../Standard/Standard_OStream

discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Attribute"
type
  TDF_IDFilter* {.importcpp: "TDF_IDFilter", header: "TDF_IDFilter.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Creates
                                                                                   ## an
                                                                                   ## ID/attribute
                                                                                   ## filter
                                                                                   ## based
                                                                                   ## on
                                                                                   ## an
                                                                                   ## ID
                                                                                   ##
                                                                                   ## !
                                                                                   ## list.
                                                                                   ## The
                                                                                   ## default
                                                                                   ## mode
                                                                                   ## is
                                                                                   ## "ignore
                                                                                   ## all
                                                                                   ## but...".
                                                                                   ##
                                                                                   ## !
                                                                                   ##
                                                                                   ## !
                                                                                   ## This
                                                                                   ## filter
                                                                                   ## has
                                                                                   ## 2
                                                                                   ## working
                                                                                   ## mode:
                                                                                   ## keep
                                                                                   ## and
                                                                                   ## ignore.
                                                                                   ##
                                                                                   ## !
                                                                                   ##
                                                                                   ## !
                                                                                   ## Ignore/Exclusive
                                                                                   ## mode:
                                                                                   ## all
                                                                                   ## IDs
                                                                                   ## are
                                                                                   ## ignored
                                                                                   ## except
                                                                                   ##
                                                                                   ## !
                                                                                   ## these
                                                                                   ## set
                                                                                   ## to
                                                                                   ## be
                                                                                   ## kept,
                                                                                   ## using
                                                                                   ## Keep().
                                                                                   ## Of
                                                                                   ## course,
                                                                                   ## it
                                                                                   ##
                                                                                   ## !
                                                                                   ## is
                                                                                   ## possible
                                                                                   ## set
                                                                                   ## an
                                                                                   ## kept
                                                                                   ## ID
                                                                                   ## to
                                                                                   ## be
                                                                                   ## ignored
                                                                                   ## using
                                                                                   ##
                                                                                   ## !
                                                                                   ## Ignore().
                                                                                   ##
                                                                                   ## !
                                                                                   ##
                                                                                   ## !
                                                                                   ## Keep/Inclusive
                                                                                   ## mode:
                                                                                   ## all
                                                                                   ## IDs
                                                                                   ## are
                                                                                   ## kept
                                                                                   ## except
                                                                                   ## these
                                                                                   ##
                                                                                   ## !
                                                                                   ## set
                                                                                   ## to
                                                                                   ## be
                                                                                   ## ignored,
                                                                                   ## using
                                                                                   ## Ignore().
                                                                                   ## Of
                                                                                   ## course,
                                                                                   ## it
                                                                                   ##
                                                                                   ## !
                                                                                   ## is
                                                                                   ## possible
                                                                                   ## set
                                                                                   ## an
                                                                                   ## ignored
                                                                                   ## ID
                                                                                   ## to
                                                                                   ## be
                                                                                   ## kept
                                                                                   ## using
                                                                                   ##
                                                                                   ## !
                                                                                   ## Keep().
                                                                                   ##
                                                                                   ## !
                                                                                   ## Private,
                                                                                   ## to
                                                                                   ## forbid
                                                                                   ## implicit
                                                                                   ## or
                                                                                   ## hidden
                                                                                   ## accesses
                                                                                   ## to
                                                                                   ##
                                                                                   ## !
                                                                                   ## the
                                                                                   ## copy
                                                                                   ## constructor.


proc constructTDF_IDFilter*(ignoreMode: Standard_Boolean = Standard_True): TDF_IDFilter {.
    constructor, importcpp: "TDF_IDFilter(@)", header: "TDF_IDFilter.hxx".}
proc IgnoreAll*(this: var TDF_IDFilter; ignore: Standard_Boolean) {.
    importcpp: "IgnoreAll", header: "TDF_IDFilter.hxx".}
proc IgnoreAll*(this: TDF_IDFilter): Standard_Boolean {.noSideEffect,
    importcpp: "IgnoreAll", header: "TDF_IDFilter.hxx".}
proc Keep*(this: var TDF_IDFilter; anID: Standard_GUID) {.importcpp: "Keep",
    header: "TDF_IDFilter.hxx".}
proc Keep*(this: var TDF_IDFilter; anIDList: TDF_IDList) {.importcpp: "Keep",
    header: "TDF_IDFilter.hxx".}
proc Ignore*(this: var TDF_IDFilter; anID: Standard_GUID) {.importcpp: "Ignore",
    header: "TDF_IDFilter.hxx".}
proc Ignore*(this: var TDF_IDFilter; anIDList: TDF_IDList) {.importcpp: "Ignore",
    header: "TDF_IDFilter.hxx".}
proc IsKept*(this: TDF_IDFilter; anID: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsKept", header: "TDF_IDFilter.hxx".}
proc IsKept*(this: TDF_IDFilter; anAtt: handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "IsKept", header: "TDF_IDFilter.hxx".}
proc IsIgnored*(this: TDF_IDFilter; anID: Standard_GUID): Standard_Boolean {.
    noSideEffect, importcpp: "IsIgnored", header: "TDF_IDFilter.hxx".}
proc IsIgnored*(this: TDF_IDFilter; anAtt: handle[TDF_Attribute]): Standard_Boolean {.
    noSideEffect, importcpp: "IsIgnored", header: "TDF_IDFilter.hxx".}
proc IDList*(this: TDF_IDFilter; anIDList: var TDF_IDList) {.noSideEffect,
    importcpp: "IDList", header: "TDF_IDFilter.hxx".}
proc Copy*(this: var TDF_IDFilter; fromFilter: TDF_IDFilter) {.importcpp: "Copy",
    header: "TDF_IDFilter.hxx".}
proc Dump*(this: TDF_IDFilter; anOS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "TDF_IDFilter.hxx".}
proc Assign*(this: var TDF_IDFilter; theFilter: TDF_IDFilter) {.importcpp: "Assign",
    header: "TDF_IDFilter.hxx".}