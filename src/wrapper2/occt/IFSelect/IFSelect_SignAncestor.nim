##  Created on: 1999-02-17
##  Created by: Pavel DURANDIN
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

import
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SignType,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SignAncestor"
discard "forward decl of IFSelect_SignAncestor"
type
  Handle_IFSelect_SignAncestor* = handle[IFSelect_SignAncestor]
  IFSelect_SignAncestor* {.importcpp: "IFSelect_SignAncestor",
                          header: "IFSelect_SignAncestor.hxx", bycopy.} = object of IFSelect_SignType


proc constructIFSelect_SignAncestor*(nopk: Standard_Boolean = Standard_False): IFSelect_SignAncestor {.
    constructor, importcpp: "IFSelect_SignAncestor(@)",
    header: "IFSelect_SignAncestor.hxx".}
proc Matches*(this: IFSelect_SignAncestor; ent: handle[Standard_Transient];
             model: handle[Interface_InterfaceModel];
             text: TCollection_AsciiString; exact: Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "Matches", header: "IFSelect_SignAncestor.hxx".}
type
  IFSelect_SignAncestorbase_type* = IFSelect_SignType

proc get_type_name*(): cstring {.importcpp: "IFSelect_SignAncestor::get_type_name(@)",
                              header: "IFSelect_SignAncestor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_SignAncestor::get_type_descriptor(@)",
    header: "IFSelect_SignAncestor.hxx".}
proc DynamicType*(this: IFSelect_SignAncestor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IFSelect_SignAncestor.hxx".}