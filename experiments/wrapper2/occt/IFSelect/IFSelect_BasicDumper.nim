##  Created on: 1993-11-04
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
  ../Standard/Standard, ../Standard/Standard_Type, IFSelect_SessionDumper,
  ../Standard/Standard_Boolean

discard "forward decl of IFSelect_SessionFile"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_BasicDumper"
discard "forward decl of IFSelect_BasicDumper"
type
  Handle_IFSelect_BasicDumper* = handle[IFSelect_BasicDumper]

## ! BasicDumper takes into account, for SessionFile, all the
## ! classes defined in the package IFSelect : Selections,
## ! Dispatches (there is no Modifier)

type
  IFSelect_BasicDumper* {.importcpp: "IFSelect_BasicDumper",
                         header: "IFSelect_BasicDumper.hxx", bycopy.} = object of IFSelect_SessionDumper ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## BasicDumper
                                                                                                  ## and
                                                                                                  ## puts
                                                                                                  ## it
                                                                                                  ## into
                                                                                                  ## the
                                                                                                  ## Library
                                                                                                  ## of
                                                                                                  ## Dumper


proc constructIFSelect_BasicDumper*(): IFSelect_BasicDumper {.constructor,
    importcpp: "IFSelect_BasicDumper(@)", header: "IFSelect_BasicDumper.hxx".}
proc WriteOwn*(this: IFSelect_BasicDumper; file: var IFSelect_SessionFile;
              item: handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "WriteOwn", header: "IFSelect_BasicDumper.hxx".}
proc ReadOwn*(this: IFSelect_BasicDumper; file: var IFSelect_SessionFile;
             `type`: TCollection_AsciiString; item: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "ReadOwn", header: "IFSelect_BasicDumper.hxx".}
type
  IFSelect_BasicDumperbase_type* = IFSelect_SessionDumper

proc get_type_name*(): cstring {.importcpp: "IFSelect_BasicDumper::get_type_name(@)",
                              header: "IFSelect_BasicDumper.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IFSelect_BasicDumper::get_type_descriptor(@)",
    header: "IFSelect_BasicDumper.hxx".}
proc DynamicType*(this: IFSelect_BasicDumper): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IFSelect_BasicDumper.hxx".}