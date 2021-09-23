##  Created on: 1992-02-17
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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Transfer/Transfer_Binder, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of Transfer_TransferFailure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TransferBRep_BinderOfShape"
discard "forward decl of TransferBRep_BinderOfShape"
type
  Handle_TransferBRep_BinderOfShape* = handle[TransferBRep_BinderOfShape]

## ! Allows direct binding between a starting Object and the Result
## ! of its transfer when it is Unique.
## ! The Result itself is defined as a formal parameter <Shape from TopoDS>
## ! Warning : While it is possible to instantiate BinderOfShape with any Type
## ! for the Result, it is not advisable to instantiate it with
## ! Transient Classes, because such Results are directly known and
## ! managed by TransferProcess & Co, through
## ! SimpleBinderOfTransient : this class looks like instantiation
## ! of BinderOfShape, but its method ResultType
## ! is adapted (reads DynamicType of the Result)

type
  TransferBRep_BinderOfShape* {.importcpp: "TransferBRep_BinderOfShape",
                               header: "TransferBRep_BinderOfShape.hxx", bycopy.} = object of Transfer_Binder ##
                                                                                                       ## !
                                                                                                       ## normal
                                                                                                       ## standard
                                                                                                       ## constructor,
                                                                                                       ## creates
                                                                                                       ## an
                                                                                                       ## empty
                                                                                                       ## BinderOfShape


proc constructTransferBRep_BinderOfShape*(): TransferBRep_BinderOfShape {.
    constructor, importcpp: "TransferBRep_BinderOfShape(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc constructTransferBRep_BinderOfShape*(res: TopoDS_Shape): TransferBRep_BinderOfShape {.
    constructor, importcpp: "TransferBRep_BinderOfShape(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc ResultType*(this: TransferBRep_BinderOfShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType", header: "TransferBRep_BinderOfShape.hxx".}
proc ResultTypeName*(this: TransferBRep_BinderOfShape): Standard_CString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "TransferBRep_BinderOfShape.hxx".}
proc SetResult*(this: var TransferBRep_BinderOfShape; res: TopoDS_Shape) {.
    importcpp: "SetResult", header: "TransferBRep_BinderOfShape.hxx".}
proc Result*(this: TransferBRep_BinderOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "TransferBRep_BinderOfShape.hxx".}
proc CResult*(this: var TransferBRep_BinderOfShape): var TopoDS_Shape {.
    importcpp: "CResult", header: "TransferBRep_BinderOfShape.hxx".}
type
  TransferBRep_BinderOfShapebase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "TransferBRep_BinderOfShape::get_type_name(@)",
                              header: "TransferBRep_BinderOfShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TransferBRep_BinderOfShape::get_type_descriptor(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc DynamicType*(this: TransferBRep_BinderOfShape): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_BinderOfShape.hxx".}