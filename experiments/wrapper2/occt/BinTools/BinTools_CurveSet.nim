##  Created on: 2004-05-20
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
discard "forward decl of Geom_Curve"
type
  BinTools_CurveSet* {.importcpp: "BinTools_CurveSet",
                      header: "BinTools_CurveSet.hxx", bycopy.} = object ## ! Returns an empty set of Curves.


proc constructBinTools_CurveSet*(): BinTools_CurveSet {.constructor,
    importcpp: "BinTools_CurveSet(@)", header: "BinTools_CurveSet.hxx".}
proc Clear*(this: var BinTools_CurveSet) {.importcpp: "Clear",
                                       header: "BinTools_CurveSet.hxx".}
proc Add*(this: var BinTools_CurveSet; C: handle[Geom_Curve]): Standard_Integer {.
    importcpp: "Add", header: "BinTools_CurveSet.hxx".}
proc Curve*(this: BinTools_CurveSet; I: Standard_Integer): handle[Geom_Curve] {.
    noSideEffect, importcpp: "Curve", header: "BinTools_CurveSet.hxx".}
proc Index*(this: BinTools_CurveSet; C: handle[Geom_Curve]): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BinTools_CurveSet.hxx".}
proc Write*(this: BinTools_CurveSet; OS: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    noSideEffect, importcpp: "Write", header: "BinTools_CurveSet.hxx".}
proc Read*(this: var BinTools_CurveSet; IS: var Standard_IStream;
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "Read", header: "BinTools_CurveSet.hxx".}
proc WriteCurve*(C: handle[Geom_Curve]; OS: var Standard_OStream) {.
    importcpp: "BinTools_CurveSet::WriteCurve(@)", header: "BinTools_CurveSet.hxx".}
proc ReadCurve*(IS: var Standard_IStream; C: var handle[Geom_Curve]): var Standard_IStream {.
    importcpp: "BinTools_CurveSet::ReadCurve(@)", header: "BinTools_CurveSet.hxx".}