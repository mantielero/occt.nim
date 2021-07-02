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

discard "forward decl of IGESData_Protocol"
discard "forward decl of Interface_Protocol"
discard "forward decl of IGESData_FileProtocol"
discard "forward decl of IGESData_FileProtocol"
type
  HandleIGESDataFileProtocol* = Handle[IGESDataFileProtocol]

## ! This class allows to define complex protocols, in order to
## ! treat various sub-sets (or the complete set) of the IGES Norm,
## ! such as Solid + Draw (which are normally independant), etc...
## ! While it inherits Protocol from IGESData, it admits
## ! UndefinedEntity too

type
  IGESDataFileProtocol* {.importcpp: "IGESData_FileProtocol",
                         header: "IGESData_FileProtocol.hxx", bycopy.} = object of IGESDataProtocol ##
                                                                                             ## !
                                                                                             ## Returns
                                                                                             ## an
                                                                                             ## empty
                                                                                             ## FileProtocol


proc constructIGESDataFileProtocol*(): IGESDataFileProtocol {.constructor,
    importcpp: "IGESData_FileProtocol(@)", header: "IGESData_FileProtocol.hxx".}
proc add*(this: var IGESDataFileProtocol; protocol: Handle[IGESDataProtocol]) {.
    importcpp: "Add", header: "IGESData_FileProtocol.hxx".}
proc nbResources*(this: IGESDataFileProtocol): StandardInteger {.noSideEffect,
    importcpp: "NbResources", header: "IGESData_FileProtocol.hxx".}
proc resource*(this: IGESDataFileProtocol; num: StandardInteger): Handle[
    InterfaceProtocol] {.noSideEffect, importcpp: "Resource",
                        header: "IGESData_FileProtocol.hxx".}
type
  IGESDataFileProtocolbaseType* = IGESDataProtocol

proc getTypeName*(): cstring {.importcpp: "IGESData_FileProtocol::get_type_name(@)",
                            header: "IGESData_FileProtocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_FileProtocol::get_type_descriptor(@)",
    header: "IGESData_FileProtocol.hxx".}
proc dynamicType*(this: IGESDataFileProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_FileProtocol.hxx".}

