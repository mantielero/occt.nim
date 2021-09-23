##  Created on: 1998-01-08
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
  ../Standard/Standard, ../Standard/Standard_Type, Interface_GeneralLib,
  Interface_DataMapOfTransientInteger,
  ../TColStd/TColStd_IndexedDataMapOfTransientTransient,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean

discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_SignType"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_GTool"
discard "forward decl of Interface_GTool"
type
  Handle_Interface_GTool* = handle[Interface_GTool]

## ! GTool - General Tool for a Model
## ! Provides the functions performed by Protocol/GeneralModule for
## ! entities of a Model, and recorded in a GeneralLib
## ! Optimized : once an entity has been queried, the GeneralLib is
## ! not longer queried
## ! Shareable between several users : as a Handle

type
  Interface_GTool* {.importcpp: "Interface_GTool", header: "Interface_GTool.hxx",
                    bycopy.} = object of Standard_Transient ## ! Creates an empty, not set, GTool


proc constructInterface_GTool*(): Interface_GTool {.constructor,
    importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc constructInterface_GTool*(proto: handle[Interface_Protocol];
                              nbent: Standard_Integer = 0): Interface_GTool {.
    constructor, importcpp: "Interface_GTool(@)", header: "Interface_GTool.hxx".}
proc SetSignType*(this: var Interface_GTool; sign: handle[Interface_SignType]) {.
    importcpp: "SetSignType", header: "Interface_GTool.hxx".}
proc SignType*(this: Interface_GTool): handle[Interface_SignType] {.noSideEffect,
    importcpp: "SignType", header: "Interface_GTool.hxx".}
proc SignValue*(this: Interface_GTool; ent: handle[Standard_Transient];
               model: handle[Interface_InterfaceModel]): Standard_CString {.
    noSideEffect, importcpp: "SignValue", header: "Interface_GTool.hxx".}
proc SignName*(this: Interface_GTool): Standard_CString {.noSideEffect,
    importcpp: "SignName", header: "Interface_GTool.hxx".}
proc SetProtocol*(this: var Interface_GTool; proto: handle[Interface_Protocol];
                 enforce: Standard_Boolean = Standard_False) {.
    importcpp: "SetProtocol", header: "Interface_GTool.hxx".}
proc Protocol*(this: Interface_GTool): handle[Interface_Protocol] {.noSideEffect,
    importcpp: "Protocol", header: "Interface_GTool.hxx".}
proc Lib*(this: var Interface_GTool): var Interface_GeneralLib {.importcpp: "Lib",
    header: "Interface_GTool.hxx".}
proc Reservate*(this: var Interface_GTool; nb: Standard_Integer;
               enforce: Standard_Boolean = Standard_False) {.importcpp: "Reservate",
    header: "Interface_GTool.hxx".}
proc ClearEntities*(this: var Interface_GTool) {.importcpp: "ClearEntities",
    header: "Interface_GTool.hxx".}
proc Select*(this: var Interface_GTool; ent: handle[Standard_Transient];
            gmod: var handle[Interface_GeneralModule]; CN: var Standard_Integer;
            enforce: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "Select", header: "Interface_GTool.hxx".}
type
  Interface_GToolbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Interface_GTool::get_type_name(@)",
                              header: "Interface_GTool.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Interface_GTool::get_type_descriptor(@)",
    header: "Interface_GTool.hxx".}
proc DynamicType*(this: Interface_GTool): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Interface_GTool.hxx".}