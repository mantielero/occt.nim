##  Created on: 1994-10-03
##  Created by: Assim
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, TransferBRep_BinderOfShape,
  ../TopAbs/TopAbs_ShapeEnum

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shell"
discard "forward decl of TopoDS_Solid"
discard "forward decl of TopoDS_CompSolid"
discard "forward decl of TopoDS_Compound"
discard "forward decl of TransferBRep_ShapeBinder"
discard "forward decl of TransferBRep_ShapeBinder"
type
  Handle_TransferBRep_ShapeBinder* = handle[TransferBRep_ShapeBinder]

## ! A ShapeBinder is a BinderOfShape with some additional services
## ! to cast the Result under various kinds of Shapes

type
  TransferBRep_ShapeBinder* {.importcpp: "TransferBRep_ShapeBinder",
                             header: "TransferBRep_ShapeBinder.hxx", bycopy.} = object of TransferBRep_BinderOfShape ##
                                                                                                              ## !
                                                                                                              ## Creates
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## ShapeBinder


proc constructTransferBRep_ShapeBinder*(): TransferBRep_ShapeBinder {.constructor,
    importcpp: "TransferBRep_ShapeBinder(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc constructTransferBRep_ShapeBinder*(res: TopoDS_Shape): TransferBRep_ShapeBinder {.
    constructor, importcpp: "TransferBRep_ShapeBinder(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc ShapeType*(this: TransferBRep_ShapeBinder): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TransferBRep_ShapeBinder.hxx".}
proc Vertex*(this: TransferBRep_ShapeBinder): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TransferBRep_ShapeBinder.hxx".}
proc Edge*(this: TransferBRep_ShapeBinder): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TransferBRep_ShapeBinder.hxx".}
proc Wire*(this: TransferBRep_ShapeBinder): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "TransferBRep_ShapeBinder.hxx".}
proc Face*(this: TransferBRep_ShapeBinder): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TransferBRep_ShapeBinder.hxx".}
proc Shell*(this: TransferBRep_ShapeBinder): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "TransferBRep_ShapeBinder.hxx".}
proc Solid*(this: TransferBRep_ShapeBinder): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "TransferBRep_ShapeBinder.hxx".}
proc CompSolid*(this: TransferBRep_ShapeBinder): TopoDS_CompSolid {.noSideEffect,
    importcpp: "CompSolid", header: "TransferBRep_ShapeBinder.hxx".}
proc Compound*(this: TransferBRep_ShapeBinder): TopoDS_Compound {.noSideEffect,
    importcpp: "Compound", header: "TransferBRep_ShapeBinder.hxx".}
type
  TransferBRep_ShapeBinderbase_type* = TransferBRep_BinderOfShape

proc get_type_name*(): cstring {.importcpp: "TransferBRep_ShapeBinder::get_type_name(@)",
                              header: "TransferBRep_ShapeBinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TransferBRep_ShapeBinder::get_type_descriptor(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc DynamicType*(this: TransferBRep_ShapeBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TransferBRep_ShapeBinder.hxx".}