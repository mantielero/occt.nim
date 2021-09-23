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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of TopoDS_Shape"
type
  TransferBRep_ShapeInfo* {.importcpp: "TransferBRep_ShapeInfo",
                           header: "TransferBRep_ShapeInfo.hxx", bycopy.} = object ## !
                                                                              ## Returns
                                                                              ## the
                                                                              ## Type
                                                                              ## attached to an
                                                                              ## object
                                                                              ## !
                                                                              ## Here,
                                                                              ## TShape
                                                                              ## (Shape
                                                                              ## has no
                                                                              ## Dynamic
                                                                              ## Type)


proc Type*(ent: TopoDS_Shape): handle[Standard_Type] {.
    importcpp: "TransferBRep_ShapeInfo::Type(@)",
    header: "TransferBRep_ShapeInfo.hxx".}
proc TypeName*(ent: TopoDS_Shape): Standard_CString {.
    importcpp: "TransferBRep_ShapeInfo::TypeName(@)",
    header: "TransferBRep_ShapeInfo.hxx".}