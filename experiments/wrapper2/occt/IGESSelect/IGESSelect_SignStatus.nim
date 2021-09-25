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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_SignStatus"
discard "forward decl of IGESSelect_SignStatus"
type
  HandleIGESSelectSignStatus* = Handle[IGESSelectSignStatus]

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
  IGESSelectSignStatus* {.importcpp: "IGESSelect_SignStatus",
                         header: "IGESSelect_SignStatus.hxx", bycopy.} = object of IFSelectSignature


proc constructIGESSelectSignStatus*(): IGESSelectSignStatus {.constructor,
    importcpp: "IGESSelect_SignStatus(@)", header: "IGESSelect_SignStatus.hxx".}
proc value*(this: IGESSelectSignStatus; ent: Handle[StandardTransient];
           model: Handle[InterfaceInterfaceModel]): StandardCString {.noSideEffect,
    importcpp: "Value", header: "IGESSelect_SignStatus.hxx".}
proc matches*(this: IGESSelectSignStatus; ent: Handle[StandardTransient];
             model: Handle[InterfaceInterfaceModel]; text: TCollectionAsciiString;
             exact: bool): bool {.noSideEffect, importcpp: "Matches",
                               header: "IGESSelect_SignStatus.hxx".}
type
  IGESSelectSignStatusbaseType* = IFSelectSignature

proc getTypeName*(): cstring {.importcpp: "IGESSelect_SignStatus::get_type_name(@)",
                            header: "IGESSelect_SignStatus.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_SignStatus::get_type_descriptor(@)",
    header: "IGESSelect_SignStatus.hxx".}
proc dynamicType*(this: IGESSelectSignStatus): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_SignStatus.hxx".}
