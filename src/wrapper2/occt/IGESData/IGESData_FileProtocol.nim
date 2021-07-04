##  Created on: 1993-10-26
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, IGESData_Protocol,
  ../Standard/Standard_Integer

discard "forward decl of IGESData_Protocol"
discard "forward decl of Interface_Protocol"
discard "forward decl of IGESData_FileProtocol"
discard "forward decl of IGESData_FileProtocol"
type
  Handle_IGESData_FileProtocol* = handle[IGESData_FileProtocol]

## ! This class allows to define complex protocols, in order to
## ! treat various sub-sets (or the complete set) of the IGES Norm,
## ! such as Solid + Draw (which are normally independant), etc...
## ! While it inherits Protocol from IGESData, it admits
## ! UndefinedEntity too

type
  IGESData_FileProtocol* {.importcpp: "IGESData_FileProtocol",
                          header: "IGESData_FileProtocol.hxx", bycopy.} = object of IGESData_Protocol ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## FileProtocol


proc constructIGESData_FileProtocol*(): IGESData_FileProtocol {.constructor,
    importcpp: "IGESData_FileProtocol(@)", header: "IGESData_FileProtocol.hxx".}
proc Add*(this: var IGESData_FileProtocol; protocol: handle[IGESData_Protocol]) {.
    importcpp: "Add", header: "IGESData_FileProtocol.hxx".}
proc NbResources*(this: IGESData_FileProtocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESData_FileProtocol.hxx".}
proc Resource*(this: IGESData_FileProtocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESData_FileProtocol.hxx".}
type
  IGESData_FileProtocolbase_type* = IGESData_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESData_FileProtocol::get_type_name(@)",
                              header: "IGESData_FileProtocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_FileProtocol::get_type_descriptor(@)",
    header: "IGESData_FileProtocol.hxx".}
proc DynamicType*(this: IGESData_FileProtocol): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_FileProtocol.hxx".}