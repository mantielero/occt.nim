##  Created on: 1992-11-17
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_Graph"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectModelRoots"
type
  HandleIFSelectSelectModelRoots* = Handle[IFSelectSelectModelRoots]

## ! A SelectModelRoots gets all the Root Entities of an
## ! InterfaceModel. Remember that a "Root Entity" is defined as
## ! having no Sharing Entity (if there is a Loop between Entities,
## ! none of them can be a "Root").

type
  IFSelectSelectModelRoots* {.importcpp: "IFSelect_SelectModelRoots",
                             header: "IFSelect_SelectModelRoots.hxx", bycopy.} = object of IFSelectSelectBase ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## a
                                                                                                       ## SelectModelRoot


proc newIFSelectSelectModelRoots*(): IFSelectSelectModelRoots {.cdecl, constructor,
    importcpp: "IFSelect_SelectModelRoots(@)", header: "IFSelect_SelectModelRoots.hxx".}
proc rootResult*(this: IFSelectSelectModelRoots; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectModelRoots.hxx".}
proc label*(this: IFSelectSelectModelRoots): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "Label", header: "IFSelect_SelectModelRoots.hxx".}