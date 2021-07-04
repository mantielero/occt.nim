##  Created on: 2004-05-18
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_IndexedMapOfTransient,
  ../Standard/Standard_Integer, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Message/Message_ProgressRange

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Geom2d_Curve"
type
  BinTools_Curve2dSet* {.importcpp: "BinTools_Curve2dSet",
                        header: "BinTools_Curve2dSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructBinTools_Curve2dSet*(): BinTools_Curve2dSet {.constructor,
    importcpp: "BinTools_Curve2dSet(@)", header: "BinTools_Curve2dSet.hxx".}
proc Clear*(this: var BinTools_Curve2dSet) {.importcpp: "Clear",
    header: "BinTools_Curve2dSet.hxx".}
proc Add*(this: var BinTools_Curve2dSet; C: handle[Geom2d_Curve]): Standard_Integer {.
    importcpp: "Add", header: "BinTools_Curve2dSet.hxx".}
proc Curve2d*(this: BinTools_Curve2dSet; I: Standard_Integer): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "Curve2d", header: "BinTools_Curve2dSet.hxx".}
proc Index*(this: BinTools_Curve2dSet; C: handle[Geom2d_Curve]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BinTools_Curve2dSet.hxx".}
proc Dump*(this: BinTools_Curve2dSet; OS: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "BinTools_Curve2dSet.hxx".}
proc Write*(this: BinTools_Curve2dSet; OS: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "BinTools_Curve2dSet.hxx".}
proc Read*(this: var BinTools_Curve2dSet; IS: var Standard_IStream;
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinTools_Curve2dSet.hxx".}
proc WriteCurve2d*(C: handle[Geom2d_Curve]; OS: var Standard_OStream) {.
    importcpp: "BinTools_Curve2dSet::WriteCurve2d(@)",
    header: "BinTools_Curve2dSet.hxx".}
proc ReadCurve2d*(IS: var Standard_IStream; C: var handle[Geom2d_Curve]): var Standard_IStream {.
    importcpp: "BinTools_Curve2dSet::ReadCurve2d(@)",
    header: "BinTools_Curve2dSet.hxx".}