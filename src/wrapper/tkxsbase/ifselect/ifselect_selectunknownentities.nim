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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of TCollection_AsciiString"
discard "forward decl of IFSelect_SelectUnknownEntities"
type
  HandleIFSelectSelectUnknownEntities* = Handle[IFSelectSelectUnknownEntities]

## ! A SelectUnknownEntities sorts the Entities which are qualified
## ! as "Unknown" (their Type has not been recognized)

type
  IFSelectSelectUnknownEntities* {.importcpp: "IFSelect_SelectUnknownEntities",
                                  header: "IFSelect_SelectUnknownEntities.hxx",
                                  bycopy.} = object of IFSelectSelectExtract ## ! Creates a
                                                                        ## SelectUnknownEntities


proc newIFSelectSelectUnknownEntities*(): IFSelectSelectUnknownEntities {.cdecl,
    constructor, importcpp: "IFSelect_SelectUnknownEntities(@)", header: "IFSelect_SelectUnknownEntities.hxx".}
proc sort*(this: IFSelectSelectUnknownEntities; rank: cint;
          ent: Handle[StandardTransient]; model: Handle[InterfaceInterfaceModel]): bool {.
    noSideEffect, cdecl, importcpp: "Sort", header: "IFSelect_SelectUnknownEntities.hxx".}
proc extractLabel*(this: IFSelectSelectUnknownEntities): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "ExtractLabel", header: "IFSelect_SelectUnknownEntities.hxx".}