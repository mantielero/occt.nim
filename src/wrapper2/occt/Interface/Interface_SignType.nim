##  Created on: 1998-02-04
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
  ../Standard/Standard, ../Standard/Standard_Type, ../MoniTool/MoniTool_SignText,
  ../Standard/Standard_CString

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_SignType"
discard "forward decl of Interface_SignType"
type
  Handle_Interface_SignType* = handle[Interface_SignType]

## ! Provides the basic service to get a type name, according
## ! to a norm
## ! It can be used for other classes (general signatures ...)

type
  Interface_SignType* {.importcpp: "Interface_SignType",
                       header: "Interface_SignType.hxx", bycopy.} = object of MoniTool_SignText ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## an
                                                                                         ## identification
                                                                                         ## of
                                                                                         ## the
                                                                                         ## Signature
                                                                                         ## (a
                                                                                         ## word),
                                                                                         ## given
                                                                                         ## at
                                                                                         ##
                                                                                         ## !
                                                                                         ## initialization
                                                                                         ## time
                                                                                         ##
                                                                                         ## !
                                                                                         ## Specialised
                                                                                         ## to
                                                                                         ## consider
                                                                                         ## context
                                                                                         ## as
                                                                                         ## an
                                                                                         ## InterfaceModel


proc Text*(this: Interface_SignType; ent: handle[Standard_Transient];
          context: handle[Standard_Transient]): TCollection_AsciiString {.
    noSideEffect, importcpp: "Text", header: "Interface_SignType.hxx".}
proc Value*(this: Interface_SignType; ent: handle[Standard_Transient];
           model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "Value", header: "Interface_SignType.hxx".}
proc ClassName*(typnam: Standard_CString): Standard_CString {.
    importcpp: "Interface_SignType::ClassName(@)",
    header: "Interface_SignType.hxx".}
type
  Interface_SignTypebase_type* = MoniTool_SignText

proc get_type_name*(): cstring {.importcpp: "Interface_SignType::get_type_name(@)",
                              header: "Interface_SignType.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_SignType::get_type_descriptor(@)",
    header: "Interface_SignType.hxx".}
proc DynamicType*(this: Interface_SignType): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_SignType.hxx".}