##  Created on: 1998-01-21
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

discard "forward decl of TCollection_SeqNode"
type
  HandleTCollectionSeqNode* = Handle[TCollectionSeqNode]
  TCollectionSeqNode* {.importcpp: "TCollection_SeqNode",
                       header: "TCollection_SeqNode.hxx", bycopy.} = object of StandardTransient


proc newTCollectionSeqNode*(n: TCollectionSeqNodePtr; p: TCollectionSeqNodePtr): TCollectionSeqNode {.
    cdecl, constructor, importcpp: "TCollection_SeqNode(@)", dynlib: tkernel.}
proc next*(this: TCollectionSeqNode): var TCollectionSeqNodePtr {.noSideEffect, cdecl,
    importcpp: "Next", dynlib: tkernel.}
proc previous*(this: TCollectionSeqNode): var TCollectionSeqNodePtr {.noSideEffect,
    cdecl, importcpp: "Previous", dynlib: tkernel.}