##  Created on: 1993-07-15
##  Created by: Remi LEQUETTE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Face,
  ../Draw/Draw_Color, ../TColStd/TColStd_Array1OfInteger,
  ../TColStd/TColStd_Array1OfReal, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_IsoType,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Color"
discard "forward decl of DBRep_Face"
discard "forward decl of DBRep_Face"
type
  Handle_DBRep_Face* = handle[DBRep_Face]

## ! Display of a face. Face + Array of iso + color.

type
  DBRep_Face* {.importcpp: "DBRep_Face", header: "DBRep_Face.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                 ## !
                                                                                                 ## N
                                                                                                 ## is
                                                                                                 ## the
                                                                                                 ## number
                                                                                                 ## of
                                                                                                 ## iso
                                                                                                 ## intervals.


proc constructDBRep_Face*(F: TopoDS_Face; N: Standard_Integer; C: Draw_Color): DBRep_Face {.
    constructor, importcpp: "DBRep_Face(@)", header: "DBRep_Face.hxx".}
proc Face*(this: DBRep_Face): TopoDS_Face {.noSideEffect, importcpp: "Face",
                                        header: "DBRep_Face.hxx".}
proc Face*(this: var DBRep_Face; F: TopoDS_Face) {.importcpp: "Face",
    header: "DBRep_Face.hxx".}
proc NbIsos*(this: DBRep_Face): Standard_Integer {.noSideEffect, importcpp: "NbIsos",
    header: "DBRep_Face.hxx".}
proc Iso*(this: var DBRep_Face; I: Standard_Integer; T: GeomAbs_IsoType;
         Par: Standard_Real; T1: Standard_Real; T2: Standard_Real) {.importcpp: "Iso",
    header: "DBRep_Face.hxx".}
proc GetIso*(this: DBRep_Face; I: Standard_Integer; T: var GeomAbs_IsoType;
            Par: var Standard_Real; T1: var Standard_Real; T2: var Standard_Real) {.
    noSideEffect, importcpp: "GetIso", header: "DBRep_Face.hxx".}
proc Color*(this: DBRep_Face): Draw_Color {.noSideEffect, importcpp: "Color",
                                        header: "DBRep_Face.hxx".}
proc Color*(this: var DBRep_Face; C: Draw_Color) {.importcpp: "Color",
    header: "DBRep_Face.hxx".}
type
  DBRep_Facebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "DBRep_Face::get_type_name(@)",
                              header: "DBRep_Face.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DBRep_Face::get_type_descriptor(@)", header: "DBRep_Face.hxx".}
proc DynamicType*(this: DBRep_Face): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_Face.hxx".}