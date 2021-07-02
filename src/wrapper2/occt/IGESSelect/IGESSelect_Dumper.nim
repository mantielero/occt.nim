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

discard "forward decl of IFSelect_SessionFile"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IGESSelect_Dumper"
discard "forward decl of IGESSelect_Dumper"
type
  HandleIGESSelectDumper* = Handle[IGESSelectDumper]

## ! Dumper from IGESSelect takes into account, for SessionFile, the
## ! classes defined in the package IGESSelect : Selections,
## ! Dispatches, Modifiers

type
  IGESSelectDumper* {.importcpp: "IGESSelect_Dumper",
                     header: "IGESSelect_Dumper.hxx", bycopy.} = object of IFSelectSessionDumper ##
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


proc constructIGESSelectDumper*(): IGESSelectDumper {.constructor,
    importcpp: "IGESSelect_Dumper(@)", header: "IGESSelect_Dumper.hxx".}
proc writeOwn*(this: IGESSelectDumper; file: var IFSelectSessionFile;
              item: Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "WriteOwn", header: "IGESSelect_Dumper.hxx".}
proc readOwn*(this: IGESSelectDumper; file: var IFSelectSessionFile;
             `type`: TCollectionAsciiString; item: var Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "ReadOwn", header: "IGESSelect_Dumper.hxx".}
type
  IGESSelectDumperbaseType* = IFSelectSessionDumper

proc getTypeName*(): cstring {.importcpp: "IGESSelect_Dumper::get_type_name(@)",
                            header: "IGESSelect_Dumper.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSelect_Dumper::get_type_descriptor(@)",
    header: "IGESSelect_Dumper.hxx".}
proc dynamicType*(this: IGESSelectDumper): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_Dumper.hxx".}

