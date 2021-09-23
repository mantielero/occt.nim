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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../IFSelect/IFSelect_SessionDumper, ../Standard/Standard_Boolean

discard "forward decl of IFSelect_SessionFile"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_Dumper"
discard "forward decl of IGESSelect_Dumper"
type
  Handle_IGESSelect_Dumper* = handle[IGESSelect_Dumper]

## ! Dumper from IGESSelect takes into account, for SessionFile, the
## ! classes defined in the package IGESSelect : Selections,
## ! Dispatches, Modifiers

type
  IGESSelect_Dumper* {.importcpp: "IGESSelect_Dumper",
                      header: "IGESSelect_Dumper.hxx", bycopy.} = object of IFSelect_SessionDumper ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## Dumper
                                                                                            ## and
                                                                                            ## puts
                                                                                            ## it
                                                                                            ## into
                                                                                            ## the
                                                                                            ## Library
                                                                                            ## of
                                                                                            ## Dumper


proc constructIGESSelect_Dumper*(): IGESSelect_Dumper {.constructor,
    importcpp: "IGESSelect_Dumper(@)", header: "IGESSelect_Dumper.hxx".}
proc WriteOwn*(this: IGESSelect_Dumper; file: var IFSelect_SessionFile;
              item: handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "WriteOwn", header: "IGESSelect_Dumper.hxx".}
proc ReadOwn*(this: IGESSelect_Dumper; file: var IFSelect_SessionFile;
             `type`: TCollection_AsciiString; item: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadOwn", header: "IGESSelect_Dumper.hxx".}
type
  IGESSelect_Dumperbase_type* = IFSelect_SessionDumper

proc get_type_name*(): cstring {.importcpp: "IGESSelect_Dumper::get_type_name(@)",
                              header: "IGESSelect_Dumper.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_Dumper::get_type_descriptor(@)",
    header: "IGESSelect_Dumper.hxx".}
proc DynamicType*(this: IGESSelect_Dumper): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_Dumper.hxx".}