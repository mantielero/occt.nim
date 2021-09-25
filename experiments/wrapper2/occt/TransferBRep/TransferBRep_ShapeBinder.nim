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
  HandleTransferBRepShapeBinder* = Handle[TransferBRepShapeBinder]

## ! A ShapeBinder is a BinderOfShape with some additional services
## ! to cast the Result under various kinds of Shapes

type
  TransferBRepShapeBinder* {.importcpp: "TransferBRep_ShapeBinder",
                            header: "TransferBRep_ShapeBinder.hxx", bycopy.} = object of TransferBRepBinderOfShape ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## ShapeBinder


proc constructTransferBRepShapeBinder*(): TransferBRepShapeBinder {.constructor,
    importcpp: "TransferBRep_ShapeBinder(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc constructTransferBRepShapeBinder*(res: TopoDS_Shape): TransferBRepShapeBinder {.
    constructor, importcpp: "TransferBRep_ShapeBinder(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc shapeType*(this: TransferBRepShapeBinder): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "TransferBRep_ShapeBinder.hxx".}
proc vertex*(this: TransferBRepShapeBinder): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "TransferBRep_ShapeBinder.hxx".}
proc edge*(this: TransferBRepShapeBinder): TopoDS_Edge {.noSideEffect,
    importcpp: "Edge", header: "TransferBRep_ShapeBinder.hxx".}
proc wire*(this: TransferBRepShapeBinder): TopoDS_Wire {.noSideEffect,
    importcpp: "Wire", header: "TransferBRep_ShapeBinder.hxx".}
proc face*(this: TransferBRepShapeBinder): TopoDS_Face {.noSideEffect,
    importcpp: "Face", header: "TransferBRep_ShapeBinder.hxx".}
proc shell*(this: TransferBRepShapeBinder): TopoDS_Shell {.noSideEffect,
    importcpp: "Shell", header: "TransferBRep_ShapeBinder.hxx".}
proc solid*(this: TransferBRepShapeBinder): TopoDS_Solid {.noSideEffect,
    importcpp: "Solid", header: "TransferBRep_ShapeBinder.hxx".}
proc compSolid*(this: TransferBRepShapeBinder): TopoDS_CompSolid {.noSideEffect,
    importcpp: "CompSolid", header: "TransferBRep_ShapeBinder.hxx".}
proc compound*(this: TransferBRepShapeBinder): TopoDS_Compound {.noSideEffect,
    importcpp: "Compound", header: "TransferBRep_ShapeBinder.hxx".}
type
  TransferBRepShapeBinderbaseType* = TransferBRepBinderOfShape

proc getTypeName*(): cstring {.importcpp: "TransferBRep_ShapeBinder::get_type_name(@)",
                            header: "TransferBRep_ShapeBinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TransferBRep_ShapeBinder::get_type_descriptor(@)",
    header: "TransferBRep_ShapeBinder.hxx".}
proc dynamicType*(this: TransferBRepShapeBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TransferBRep_ShapeBinder.hxx".}
