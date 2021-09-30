##  Created on: 1994-06-03
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESSelect_WorkLibrary"
discard "forward decl of IGESSelect_WorkLibrary"
type
  HandleC1C1* = Handle[IGESSelectWorkLibrary]

## ! Performs Read and Write an IGES File with an IGES Model

type
  IGESSelectWorkLibrary* {.importcpp: "IGESSelect_WorkLibrary",
                          header: "IGESSelect_WorkLibrary.hxx", bycopy.} = object of IFSelectWorkLibrary ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## IGES
                                                                                                  ## WorkLibrary
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## <modefnes>
                                                                                                  ## is
                                                                                                  ## given
                                                                                                  ## as
                                                                                                  ## True,
                                                                                                  ## it
                                                                                                  ## will
                                                                                                  ## work
                                                                                                  ## for
                                                                                                  ## FNES


proc constructIGESSelectWorkLibrary*(modefnes: bool = false): IGESSelectWorkLibrary {.
    constructor, importcpp: "IGESSelect_WorkLibrary(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc readFile*(this: IGESSelectWorkLibrary; name: StandardCString;
              model: var Handle[InterfaceInterfaceModel];
              protocol: Handle[InterfaceProtocol]): cint {.noSideEffect,
    importcpp: "ReadFile", header: "IGESSelect_WorkLibrary.hxx".}
proc writeFile*(this: IGESSelectWorkLibrary; ctx: var IFSelectContextWrite): bool {.
    noSideEffect, importcpp: "WriteFile", header: "IGESSelect_WorkLibrary.hxx".}
proc defineProtocol*(): Handle[IGESDataProtocol] {.
    importcpp: "IGESSelect_WorkLibrary::DefineProtocol(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc dumpEntity*(this: IGESSelectWorkLibrary;
                model: Handle[InterfaceInterfaceModel];
                protocol: Handle[InterfaceProtocol];
                entity: Handle[StandardTransient]; s: var StandardOStream;
                level: cint) {.noSideEffect, importcpp: "DumpEntity",
                             header: "IGESSelect_WorkLibrary.hxx".}
type
  IGESSelectWorkLibrarybaseType* = IFSelectWorkLibrary

proc getTypeName*(): cstring {.importcpp: "IGESSelect_WorkLibrary::get_type_name(@)",
                            header: "IGESSelect_WorkLibrary.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_WorkLibrary::get_type_descriptor(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc dynamicType*(this: IGESSelectWorkLibrary): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_WorkLibrary.hxx".}

























