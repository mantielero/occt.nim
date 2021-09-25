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

discard "forward decl of TopoDS_Face"
discard "forward decl of Draw_Color"
discard "forward decl of DBRep_Face"
discard "forward decl of DBRep_Face"
type
  HandleDBRepFace* = Handle[DBRepFace]

## ! Display of a face. Face + Array of iso + color.

type
  DBRepFace* {.importcpp: "DBRep_Face", header: "DBRep_Face.hxx", bycopy.} = object of StandardTransient ##
                                                                                               ## !
                                                                                               ## N
                                                                                               ## is
                                                                                               ## the
                                                                                               ## number
                                                                                               ## of
                                                                                               ## iso
                                                                                               ## intervals.


proc constructDBRepFace*(f: TopoDS_Face; n: int; c: DrawColor): DBRepFace {.constructor,
    importcpp: "DBRep_Face(@)", header: "DBRep_Face.hxx".}
proc face*(this: DBRepFace): TopoDS_Face {.noSideEffect, importcpp: "Face",
                                       header: "DBRep_Face.hxx".}
proc face*(this: var DBRepFace; f: TopoDS_Face) {.importcpp: "Face",
    header: "DBRep_Face.hxx".}
proc nbIsos*(this: DBRepFace): int {.noSideEffect, importcpp: "NbIsos",
                                 header: "DBRep_Face.hxx".}
proc iso*(this: var DBRepFace; i: int; t: GeomAbsIsoType; par: float; t1: float; t2: float) {.
    importcpp: "Iso", header: "DBRep_Face.hxx".}
proc getIso*(this: DBRepFace; i: int; t: var GeomAbsIsoType; par: var float; t1: var float;
            t2: var float) {.noSideEffect, importcpp: "GetIso",
                          header: "DBRep_Face.hxx".}
proc color*(this: DBRepFace): DrawColor {.noSideEffect, importcpp: "Color",
                                      header: "DBRep_Face.hxx".}
proc color*(this: var DBRepFace; c: DrawColor) {.importcpp: "Color",
    header: "DBRep_Face.hxx".}
type
  DBRepFacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "DBRep_Face::get_type_name(@)",
                            header: "DBRep_Face.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DBRep_Face::get_type_descriptor(@)", header: "DBRep_Face.hxx".}
proc dynamicType*(this: DBRepFace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DBRep_Face.hxx".}
