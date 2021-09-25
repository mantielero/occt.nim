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

discard "forward decl of Transfer_TransferFailure"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TransferBRep_BinderOfShape"
discard "forward decl of TransferBRep_BinderOfShape"
type
  HandleTransferBRepBinderOfShape* = Handle[TransferBRepBinderOfShape]

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
  TransferBRepBinderOfShape* {.importcpp: "TransferBRep_BinderOfShape",
                              header: "TransferBRep_BinderOfShape.hxx", bycopy.} = object of TransferBinder ##
                                                                                                     ## !
                                                                                                     ## normal
                                                                                                     ## standard
                                                                                                     ## constructor,
                                                                                                     ## creates
                                                                                                     ## an
                                                                                                     ## empty
                                                                                                     ## BinderOfShape


proc constructTransferBRepBinderOfShape*(): TransferBRepBinderOfShape {.
    constructor, importcpp: "TransferBRep_BinderOfShape(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc constructTransferBRepBinderOfShape*(res: TopoDS_Shape): TransferBRepBinderOfShape {.
    constructor, importcpp: "TransferBRep_BinderOfShape(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc resultType*(this: TransferBRepBinderOfShape): Handle[StandardType] {.
    noSideEffect, importcpp: "ResultType", header: "TransferBRep_BinderOfShape.hxx".}
proc resultTypeName*(this: TransferBRepBinderOfShape): StandardCString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "TransferBRep_BinderOfShape.hxx".}
proc setResult*(this: var TransferBRepBinderOfShape; res: TopoDS_Shape) {.
    importcpp: "SetResult", header: "TransferBRep_BinderOfShape.hxx".}
proc result*(this: TransferBRepBinderOfShape): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "TransferBRep_BinderOfShape.hxx".}
proc cResult*(this: var TransferBRepBinderOfShape): var TopoDS_Shape {.
    importcpp: "CResult", header: "TransferBRep_BinderOfShape.hxx".}
type
  TransferBRepBinderOfShapebaseType* = TransferBinder

proc getTypeName*(): cstring {.importcpp: "TransferBRep_BinderOfShape::get_type_name(@)",
                            header: "TransferBRep_BinderOfShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TransferBRep_BinderOfShape::get_type_descriptor(@)",
    header: "TransferBRep_BinderOfShape.hxx".}
proc dynamicType*(this: TransferBRepBinderOfShape): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_BinderOfShape.hxx".}
