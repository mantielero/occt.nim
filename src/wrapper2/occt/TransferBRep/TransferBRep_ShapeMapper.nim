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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../Transfer/Transfer_Finder, ../Standard/Standard_Boolean,
  ../Standard/Standard_Type, ../Standard/Standard_CString

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopTools_ShapeMapHasher"
discard "forward decl of TransferBRep_ShapeInfo"
discard "forward decl of Transfer_Finder"
discard "forward decl of TransferBRep_ShapeMapper"
discard "forward decl of TransferBRep_ShapeMapper"
type
  Handle_TransferBRep_ShapeMapper* = handle[TransferBRep_ShapeMapper]
  TransferBRep_ShapeMapper* {.importcpp: "TransferBRep_ShapeMapper",
                             header: "TransferBRep_ShapeMapper.hxx", bycopy.} = object of Transfer_Finder ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## a
                                                                                                   ## Mapper
                                                                                                   ## with
                                                                                                   ## a
                                                                                                   ## Value.
                                                                                                   ## This
                                                                                                   ## Value
                                                                                                   ## can
                                                                                                   ## then
                                                                                                   ## not
                                                                                                   ## be
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## changed.
                                                                                                   ## It
                                                                                                   ## is
                                                                                                   ## used
                                                                                                   ## by
                                                                                                   ## the
                                                                                                   ## Hasher
                                                                                                   ## to
                                                                                                   ## compute
                                                                                                   ## the
                                                                                                   ## HashCode,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## which
                                                                                                   ## will
                                                                                                   ## then
                                                                                                   ## be
                                                                                                   ## stored
                                                                                                   ## for
                                                                                                   ## an
                                                                                                   ## immediate
                                                                                                   ## reading.


proc constructTransferBRep_ShapeMapper*(akey: TopoDS_Shape): TransferBRep_ShapeMapper {.
    constructor, importcpp: "TransferBRep_ShapeMapper(@)",
    header: "TransferBRep_ShapeMapper.hxx".}
proc Value*(this: TransferBRep_ShapeMapper): TopoDS_Shape {.noSideEffect,
    importcpp: "Value", header: "TransferBRep_ShapeMapper.hxx".}
proc Equates*(this: TransferBRep_ShapeMapper; other: handle[Transfer_Finder]): Standard_Boolean {.
    noSideEffect, importcpp: "Equates", header: "TransferBRep_ShapeMapper.hxx".}
proc ValueType*(this: TransferBRep_ShapeMapper): handle[Standard_Type] {.
    noSideEffect, importcpp: "ValueType", header: "TransferBRep_ShapeMapper.hxx".}
proc ValueTypeName*(this: TransferBRep_ShapeMapper): Standard_CString {.
    noSideEffect, importcpp: "ValueTypeName",
    header: "TransferBRep_ShapeMapper.hxx".}
type
  TransferBRep_ShapeMapperbase_type* = Transfer_Finder

proc get_type_name*(): cstring {.importcpp: "TransferBRep_ShapeMapper::get_type_name(@)",
                              header: "TransferBRep_ShapeMapper.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TransferBRep_ShapeMapper::get_type_descriptor(@)",
    header: "TransferBRep_ShapeMapper.hxx".}
proc DynamicType*(this: TransferBRep_ShapeMapper): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TransferBRep_ShapeMapper.hxx".}