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

import
  TDataStd_GenericExtString, ../Standard/Standard_OStream

discard "forward decl of Standard_DomainError"
discard "forward decl of TDF_Label"
discard "forward decl of TCollection_ExtendedString"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDataStd_Name"
discard "forward decl of TDataStd_Name"
type
  Handle_TDataStd_Name* = handle[TDataStd_Name]

## ! Used to define a name attribute containing a string which specifies the name.

type
  TDataStd_Name* {.importcpp: "TDataStd_Name", header: "TDataStd_Name.hxx", bycopy.} = object of TDataStd_GenericExtString ##
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


proc GetID*(): Standard_GUID {.importcpp: "TDataStd_Name::GetID(@)",
                            header: "TDataStd_Name.hxx".}
proc Set*(label: TDF_Label; string: TCollection_ExtendedString): handle[TDataStd_Name] {.
    importcpp: "TDataStd_Name::Set(@)", header: "TDataStd_Name.hxx".}
proc Set*(label: TDF_Label; guid: Standard_GUID; string: TCollection_ExtendedString): handle[
    TDataStd_Name] {.importcpp: "TDataStd_Name::Set(@)",
                    header: "TDataStd_Name.hxx".}
proc constructTDataStd_Name*(): TDataStd_Name {.constructor,
    importcpp: "TDataStd_Name(@)", header: "TDataStd_Name.hxx".}
proc Set*(this: var TDataStd_Name; S: TCollection_ExtendedString) {.importcpp: "Set",
    header: "TDataStd_Name.hxx".}
proc SetID*(this: var TDataStd_Name; guid: Standard_GUID) {.importcpp: "SetID",
    header: "TDataStd_Name.hxx".}
proc SetID*(this: var TDataStd_Name) {.importcpp: "SetID", header: "TDataStd_Name.hxx".}
proc Dump*(this: TDataStd_Name; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_Name.hxx".}
## !!!Ignored construct:  DEFINE_DERIVED_ATTRIBUTE ( TDataStd_Name , TDataStd_GenericExtString ) }
## Error: token expected: ) but got: ,!!!
