##  Copyright (c) 2015 OPEN CASCADE SAS
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
  ../StdLDrivers/StdLDrivers_DocumentRetrievalDriver

## ! retrieval driver of a Part document

type
  StdDrivers_DocumentRetrievalDriver* {.importcpp: "StdDrivers_DocumentRetrievalDriver", header: "StdDrivers_DocumentRetrievalDriver.hxx",
                                       bycopy.} = object of StdLDrivers_DocumentRetrievalDriver ##
                                                                                           ## !
                                                                                           ## Register
                                                                                           ## types.

  StdDrivers_DocumentRetrievalDriverbase_type* = StdLDrivers_DocumentRetrievalDriver

proc get_type_name*(): cstring {.importcpp: "StdDrivers_DocumentRetrievalDriver::get_type_name(@)",
                              header: "StdDrivers_DocumentRetrievalDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StdDrivers_DocumentRetrievalDriver::get_type_descriptor(@)",
    header: "StdDrivers_DocumentRetrievalDriver.hxx".}
proc DynamicType*(this: StdDrivers_DocumentRetrievalDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StdDrivers_DocumentRetrievalDriver.hxx".}