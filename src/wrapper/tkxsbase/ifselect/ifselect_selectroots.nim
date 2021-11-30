##  Created on: 1992-11-18
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
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectRoots"
type
  HandleIFSelectSelectRoots* = Handle[IFSelectSelectRoots]

## ! A SelectRoots sorts the Entities which are local roots of a
## ! set of Entities (not shared by other Entities inside this set,
## ! even if they are shared by other Entities outside it)

type
  IFSelectSelectRoots* {.importcpp: "IFSelect_SelectRoots",
                        header: "IFSelect_SelectRoots.hxx", bycopy.} = object of IFSelectSelectExtract ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## a
                                                                                                ## SelectRoots
                                                                                                ##
                                                                                                ## !
                                                                                                ## Returns
                                                                                                ## True,
                                                                                                ## because
                                                                                                ## RootResult
                                                                                                ## assures
                                                                                                ## uniqueness


proc newIFSelectSelectRoots*(): IFSelectSelectRoots {.cdecl, constructor,
    importcpp: "IFSelect_SelectRoots(@)", header: "IFSelect_SelectRoots.hxx".}
proc rootResult*(this: IFSelectSelectRoots; g: InterfaceGraph): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "IFSelect_SelectRoots.hxx".}
proc sort*(this: IFSelectSelectRoots; rank: cint; ent: Handle[StandardTransient];
          model: Handle[InterfaceInterfaceModel]): bool {.noSideEffect, cdecl,
    importcpp: "Sort", header: "IFSelect_SelectRoots.hxx".}
proc extractLabel*(this: IFSelectSelectRoots): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectRoots.hxx".}