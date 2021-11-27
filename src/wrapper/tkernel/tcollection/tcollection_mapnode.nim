##  Created on: 1998-01-19
##  Created by: Kernel
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_MapNode"
type
  HandleTCollectionMapNode* = Handle[TCollectionMapNode]

## ! Basic class root of all the Maps.

type
  TCollectionMapNode* {.importcpp: "TCollection_MapNode",
                       header: "TCollection_MapNode.hxx", bycopy.} = object of StandardTransient


proc newTCollectionMapNode*(n: TCollectionMapNodePtr): TCollectionMapNode {.cdecl,
    constructor, importcpp: "TCollection_MapNode(@)", header: "TCollection_MapNode.hxx".}
proc next*(this: TCollectionMapNode): var TCollectionMapNodePtr {.noSideEffect, cdecl,
    importcpp: "Next", header: "TCollection_MapNode.hxx".}