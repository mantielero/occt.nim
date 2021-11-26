##  Created on: 1996-09-04
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
type
  TransferBRepShapeInfo* {.importcpp: "TransferBRep_ShapeInfo",
                          header: "TransferBRep_ShapeInfo.hxx", bycopy.} = object


proc `new`*(this: var TransferBRepShapeInfo; theSize: csize_t): pointer {.
    importcpp: "TransferBRep_ShapeInfo::operator new",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `delete`*(this: var TransferBRepShapeInfo; theAddress: pointer) {.
    importcpp: "TransferBRep_ShapeInfo::operator delete",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `new[]`*(this: var TransferBRepShapeInfo; theSize: csize_t): pointer {.
    importcpp: "TransferBRep_ShapeInfo::operator new[]",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `delete[]`*(this: var TransferBRepShapeInfo; theAddress: pointer) {.
    importcpp: "TransferBRep_ShapeInfo::operator delete[]",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `new`*(this: var TransferBRepShapeInfo; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TransferBRep_ShapeInfo::operator new",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `delete`*(this: var TransferBRepShapeInfo; a2: pointer; a3: pointer) {.
    importcpp: "TransferBRep_ShapeInfo::operator delete",
    header: "TransferBRep_ShapeInfo.hxx".}
proc `type`*(ent: TopoDS_Shape): Handle[StandardType] {.
    importcpp: "TransferBRep_ShapeInfo::Type(@)",
    header: "TransferBRep_ShapeInfo.hxx".}
proc typeName*(ent: TopoDS_Shape): StandardCString {.
    importcpp: "TransferBRep_ShapeInfo::TypeName(@)",
    header: "TransferBRep_ShapeInfo.hxx".}