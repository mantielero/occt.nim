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

discard "forward decl of IFSelect_SessionFile"
discard "forward decl of Standard_Transient"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_BasicDumper"
type
  HandleIFSelectBasicDumper* = Handle[IFSelectBasicDumper]

## ! BasicDumper takes into account, for SessionFile, all the
## ! classes defined in the package IFSelect : Selections,
## ! Dispatches (there is no Modifier)

type
  IFSelectBasicDumper* {.importcpp: "IFSelect_BasicDumper",
                        header: "IFSelect_BasicDumper.hxx", bycopy.} = object of IFSelectSessionDumper ##
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


proc newIFSelectBasicDumper*(): IFSelectBasicDumper {.cdecl, constructor,
    importcpp: "IFSelect_BasicDumper(@)", header: "IFSelect_BasicDumper.hxx".}
proc writeOwn*(this: IFSelectBasicDumper; file: var IFSelectSessionFile;
              item: Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "WriteOwn", header: "IFSelect_BasicDumper.hxx".}
proc readOwn*(this: IFSelectBasicDumper; file: var IFSelectSessionFile;
             `type`: TCollectionAsciiString; item: var Handle[StandardTransient]): bool {.
    noSideEffect, cdecl, importcpp: "ReadOwn", header: "IFSelect_BasicDumper.hxx".}