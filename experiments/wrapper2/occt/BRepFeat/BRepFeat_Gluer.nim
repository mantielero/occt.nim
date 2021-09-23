##  Created on: 1996-03-08
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Handle, ../LocOpe/LocOpe_Gluer,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../LocOpe/LocOpe_Operation,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepFeat_Gluer* {.importcpp: "BRepFeat_Gluer", header: "BRepFeat_Gluer.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                   ## !
                                                                                                                   ## Initializes
                                                                                                                   ## an
                                                                                                                   ## empty
                                                                                                                   ## constructor


proc constructBRepFeat_Gluer*(): BRepFeat_Gluer {.constructor,
    importcpp: "BRepFeat_Gluer(@)", header: "BRepFeat_Gluer.hxx".}
proc constructBRepFeat_Gluer*(Snew: TopoDS_Shape; Sbase: TopoDS_Shape): BRepFeat_Gluer {.
    constructor, importcpp: "BRepFeat_Gluer(@)", header: "BRepFeat_Gluer.hxx".}
proc Init*(this: var BRepFeat_Gluer; Snew: TopoDS_Shape; Sbase: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepFeat_Gluer.hxx".}
proc Bind*(this: var BRepFeat_Gluer; Fnew: TopoDS_Face; Fbase: TopoDS_Face) {.
    importcpp: "Bind", header: "BRepFeat_Gluer.hxx".}
proc Bind*(this: var BRepFeat_Gluer; Enew: TopoDS_Edge; Ebase: TopoDS_Edge) {.
    importcpp: "Bind", header: "BRepFeat_Gluer.hxx".}
proc OpeType*(this: BRepFeat_Gluer): LocOpe_Operation {.noSideEffect,
    importcpp: "OpeType", header: "BRepFeat_Gluer.hxx".}
proc BasisShape*(this: BRepFeat_Gluer): TopoDS_Shape {.noSideEffect,
    importcpp: "BasisShape", header: "BRepFeat_Gluer.hxx".}
proc GluedShape*(this: BRepFeat_Gluer): TopoDS_Shape {.noSideEffect,
    importcpp: "GluedShape", header: "BRepFeat_Gluer.hxx".}
proc Build*(this: var BRepFeat_Gluer) {.importcpp: "Build",
                                    header: "BRepFeat_Gluer.hxx".}
proc IsDeleted*(this: var BRepFeat_Gluer; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFeat_Gluer.hxx".}
proc Modified*(this: var BRepFeat_Gluer; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFeat_Gluer.hxx".}