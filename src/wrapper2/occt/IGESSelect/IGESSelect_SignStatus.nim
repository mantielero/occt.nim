##  Created on: 1998-01-28
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Signature,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SignStatus"
discard "forward decl of IGESSelect_SignStatus"
type
  Handle_IGESSelect_SignStatus* = handle[IGESSelect_SignStatus]

## ! Gives D.E. Status under the form i,j,k,l (4 figures)
## ! i for BlankStatus
## ! j for SubordinateStatus
## ! k for UseFlag
## ! l for Hierarchy
## !
## ! For matching, allowed shortcuts
## ! B(Blanked) or V(Visible) are allowed instead of  i
## ! I(Independant=0), P(Physically Dep.=1), L(Logically Dep.=2) or
## ! D(Dependant=3) are allowed instead of  j
## ! These letters must be given in their good position
## ! For non-exact matching :
## ! a letter (see above), no comma : only this status is checked
## ! nothing or a star between commas : this status is OK

type
  IGESSelect_SignStatus* {.importcpp: "IGESSelect_SignStatus",
                          header: "IGESSelect_SignStatus.hxx", bycopy.} = object of IFSelect_Signature


proc constructIGESSelect_SignStatus*(): IGESSelect_SignStatus {.constructor,
    importcpp: "IGESSelect_SignStatus(@)", header: "IGESSelect_SignStatus.hxx".}
proc Value*(this: IGESSelect_SignStatus; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "IGESSelect_SignStatus.hxx".}
proc Matches*(this: IGESSelect_SignStatus; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel];
             text: TCollection_AsciiString; exact: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "IGESSelect_SignStatus.hxx".}
type
  IGESSelect_SignStatusbase_type* = IFSelect_Signature

proc get_type_name*(): cstring {.importcpp: "IGESSelect_SignStatus::get_type_name(@)",
                              header: "IGESSelect_SignStatus.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_SignStatus::get_type_descriptor(@)",
    header: "IGESSelect_SignStatus.hxx".}
proc DynamicType*(this: IGESSelect_SignStatus): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_SignStatus.hxx".}