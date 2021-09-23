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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../IFSelect/IFSelect_WorkLibrary, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of IFSelect_ContextWrite"
discard "forward decl of IGESData_Protocol"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESSelect_WorkLibrary"
discard "forward decl of IGESSelect_WorkLibrary"
type
  Handle_IGESSelect_WorkLibrary* = handle[IGESSelect_WorkLibrary]

## ! Performs Read and Write an IGES File with an IGES Model

type
  IGESSelect_WorkLibrary* {.importcpp: "IGESSelect_WorkLibrary",
                           header: "IGESSelect_WorkLibrary.hxx", bycopy.} = object of IFSelect_WorkLibrary ##
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


proc constructIGESSelect_WorkLibrary*(modefnes: Standard_Boolean = Standard_False): IGESSelect_WorkLibrary {.
    constructor, importcpp: "IGESSelect_WorkLibrary(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc ReadFile*(this: IGESSelect_WorkLibrary; name: Standard_CString;
              model: var handle[Interface_InterfaceModel];
              protocol: handle[Interface_Protocol]): Standard_Integer {.
    noSideEffect, importcpp: "ReadFile", header: "IGESSelect_WorkLibrary.hxx".}
proc WriteFile*(this: IGESSelect_WorkLibrary; ctx: var IFSelect_ContextWrite): Standard_Boolean {.
    noSideEffect, importcpp: "WriteFile", header: "IGESSelect_WorkLibrary.hxx".}
proc DefineProtocol*(): handle[IGESData_Protocol] {.
    importcpp: "IGESSelect_WorkLibrary::DefineProtocol(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc DumpEntity*(this: IGESSelect_WorkLibrary;
                model: handle[Interface_InterfaceModel];
                protocol: handle[Interface_Protocol];
                entity: handle[Standard_Transient]; S: var Standard_OStream;
                level: Standard_Integer) {.noSideEffect, importcpp: "DumpEntity",
    header: "IGESSelect_WorkLibrary.hxx".}
type
  IGESSelect_WorkLibrarybase_type* = IFSelect_WorkLibrary

proc get_type_name*(): cstring {.importcpp: "IGESSelect_WorkLibrary::get_type_name(@)",
                              header: "IGESSelect_WorkLibrary.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_WorkLibrary::get_type_descriptor(@)",
    header: "IGESSelect_WorkLibrary.hxx".}
proc DynamicType*(this: IGESSelect_WorkLibrary): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSelect_WorkLibrary.hxx".}