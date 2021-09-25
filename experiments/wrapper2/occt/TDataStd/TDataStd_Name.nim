##  Created on: 1997-07-31
##  Created by: Denis PASCAL
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

discard "forward decl of Standard_DomainError"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Name"
discard "forward decl of TDataStd_Name"
type
  HandleTDataStdName* = Handle[TDataStdName]

## ! Used to define a name attribute containing a string which specifies the name.

type
  TDataStdName* {.importcpp: "TDataStd_Name", header: "TDataStd_Name.hxx", bycopy.} = object of TDataStdGenericExtString ##
                                                                                                               ## !
                                                                                                               ## class
                                                                                                               ## methods
                                                                                                               ## working
                                                                                                               ## on
                                                                                                               ## the
                                                                                                               ## name
                                                                                                               ## itself
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## ========================================
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Returns
                                                                                                               ## the
                                                                                                               ## GUID
                                                                                                               ## for
                                                                                                               ## name
                                                                                                               ## attributes.


proc getID*(): StandardGUID {.importcpp: "TDataStd_Name::GetID(@)",
                           header: "TDataStd_Name.hxx".}
proc set*(label: TDF_Label; string: TCollectionExtendedString): Handle[TDataStdName] {.
    importcpp: "TDataStd_Name::Set(@)", header: "TDataStd_Name.hxx".}
proc set*(label: TDF_Label; guid: StandardGUID; string: TCollectionExtendedString): Handle[
    TDataStdName] {.importcpp: "TDataStd_Name::Set(@)", header: "TDataStd_Name.hxx".}
proc constructTDataStdName*(): TDataStdName {.constructor,
    importcpp: "TDataStd_Name(@)", header: "TDataStd_Name.hxx".}
proc set*(this: var TDataStdName; s: TCollectionExtendedString) {.importcpp: "Set",
    header: "TDataStd_Name.hxx".}
proc setID*(this: var TDataStdName; guid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_Name.hxx".}
proc setID*(this: var TDataStdName) {.importcpp: "SetID", header: "TDataStd_Name.hxx".}
proc dump*(this: TDataStdName; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Name.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Name , TDataStd_GenericExtString ) }
## Error: token expected: ) but got: ,!!!

