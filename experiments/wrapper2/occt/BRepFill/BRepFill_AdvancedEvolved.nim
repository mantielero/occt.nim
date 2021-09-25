##  Created on: 2018-03-14
##  Created by: Nikolai BUKHALOV
##  Copyright (c) 1999-2018 OPEN CASCADE SAS
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

discard "forward decl of BOPAlgo_MakerVolume"
discard "forward decl of TopoDS_Face"
type
  BRepFillAdvancedEvolved* {.importcpp: "BRepFill_AdvancedEvolved",
                            header: "BRepFill_AdvancedEvolved.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Constructor
    ##  Lids can be split on several faces


proc constructBRepFillAdvancedEvolved*(): BRepFillAdvancedEvolved {.constructor,
    importcpp: "BRepFill_AdvancedEvolved(@)",
    header: "BRepFill_AdvancedEvolved.hxx".}
proc perform*(this: var BRepFillAdvancedEvolved; theSpine: TopoDS_Wire;
             theProfile: TopoDS_Wire; theTolerance: float; theSolidReq: bool = true) {.
    importcpp: "Perform", header: "BRepFill_AdvancedEvolved.hxx".}
proc isDone*(this: BRepFillAdvancedEvolved; theErrorCode: ptr cuint = 0): bool {.
    noSideEffect, importcpp: "IsDone", header: "BRepFill_AdvancedEvolved.hxx".}
proc shape*(this: BRepFillAdvancedEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_AdvancedEvolved.hxx".}
proc setTemporaryDirectory*(this: var BRepFillAdvancedEvolved;
                           thePath: StandardCString) {.
    importcpp: "SetTemporaryDirectory", header: "BRepFill_AdvancedEvolved.hxx".}
proc setParallelMode*(this: var BRepFillAdvancedEvolved; theVal: bool) {.
    importcpp: "SetParallelMode", header: "BRepFill_AdvancedEvolved.hxx".}
## !!!Ignored construct:  private : enum { BRepFill_AdvancedEvolved_Empty = 0 , BRepFill_AdvancedEvolved_NotPlanarSpine , BRepFill_AdvancedEvolved_SweepError , BRepFill_AdvancedEvolved_NoLids , BRepFill_AdvancedEvolved_NotSolid , BRepFill_AdvancedEvolved_NotVolume , BRepFill_AdvancedEvolved_OK = UINT_MAX } myErrorStatus ;
## Error: token expected: ; but got: [identifier]!!!

