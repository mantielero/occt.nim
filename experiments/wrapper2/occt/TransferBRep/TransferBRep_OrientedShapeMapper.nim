##  Created on: 1994-10-03
##  Created by: Christian CAILLET
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopTools_OrientedShapeMapHasher"
discard "forward decl of TransferBRep_ShapeInfo"
discard "forward decl of Transfer_Finder"
discard "forward decl of TransferBRep_OrientedShapeMapper"
discard "forward decl of TransferBRep_OrientedShapeMapper"
type
  HandleTransferBRepOrientedShapeMapper* = Handle[TransferBRepOrientedShapeMapper]
  TransferBRepOrientedShapeMapper* {.importcpp: "TransferBRep_OrientedShapeMapper", header: "TransferBRep_OrientedShapeMapper.hxx",
                                    bycopy.} = object of TransferFinder ## ! Creates a Mapper with a Value. This Value can then not be
                                                                   ## ! changed. It is used by the Hasher to compute the HashCode,
                                                                   ## ! which will then be stored for an immediate reading.


proc constructTransferBRepOrientedShapeMapper*(akey: TopoDS_Shape): TransferBRepOrientedShapeMapper {.
    constructor, importcpp: "TransferBRep_OrientedShapeMapper(@)",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
proc value*(this: TransferBRepOrientedShapeMapper): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "TransferBRep_OrientedShapeMapper.hxx".}
proc equates*(this: TransferBRepOrientedShapeMapper; other: Handle[TransferFinder]): bool {.
    noSideEffect, importcpp: "Equates",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
proc valueType*(this: TransferBRepOrientedShapeMapper): Handle[StandardType] {.
    noSideEffect, importcpp: "ValueType",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
proc valueTypeName*(this: TransferBRepOrientedShapeMapper): StandardCString {.
    noSideEffect, importcpp: "ValueTypeName",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
type
  TransferBRepOrientedShapeMapperbaseType* = TransferFinder

proc getTypeName*(): cstring {.importcpp: "TransferBRep_OrientedShapeMapper::get_type_name(@)",
                            header: "TransferBRep_OrientedShapeMapper.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TransferBRep_OrientedShapeMapper::get_type_descriptor(@)",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
proc dynamicType*(this: TransferBRepOrientedShapeMapper): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TransferBRep_OrientedShapeMapper.hxx".}
