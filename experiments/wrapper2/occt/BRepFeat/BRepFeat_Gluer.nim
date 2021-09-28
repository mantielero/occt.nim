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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
type
  BRepFeatGluer* {.importcpp: "BRepFeat_Gluer", header: "BRepFeat_Gluer.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                  ## !
                                                                                                                  ## Initializes
                                                                                                                  ## an
                                                                                                                  ## empty
                                                                                                                  ## constructor


proc constructBRepFeatGluer*(): BRepFeatGluer {.constructor,
    importcpp: "BRepFeat_Gluer(@)", header: "BRepFeat_Gluer.hxx".}
proc constructBRepFeatGluer*(snew: TopoDS_Shape; sbase: TopoDS_Shape): BRepFeatGluer {.
    constructor, importcpp: "BRepFeat_Gluer(@)", header: "BRepFeat_Gluer.hxx".}
proc init*(this: var BRepFeatGluer; snew: TopoDS_Shape; sbase: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepFeat_Gluer.hxx".}
proc `bind`*(this: var BRepFeatGluer; fnew: TopoDS_Face; fbase: TopoDS_Face) {.
    importcpp: "Bind", header: "BRepFeat_Gluer.hxx".}
proc `bind`*(this: var BRepFeatGluer; enew: TopoDS_Edge; ebase: TopoDS_Edge) {.
    importcpp: "Bind", header: "BRepFeat_Gluer.hxx".}
proc opeType*(this: BRepFeatGluer): LocOpeOperation {.noSideEffect,
    importcpp: "OpeType", header: "BRepFeat_Gluer.hxx".}
proc basisShape*(this: BRepFeatGluer): TopoDS_Shape {.noSideEffect,
    importcpp: "BasisShape", header: "BRepFeat_Gluer.hxx".}
proc gluedShape*(this: BRepFeatGluer): TopoDS_Shape {.noSideEffect,
    importcpp: "GluedShape", header: "BRepFeat_Gluer.hxx".}
proc build*(this: var BRepFeatGluer) {.importcpp: "Build",
                                   header: "BRepFeat_Gluer.hxx".}
proc isDeleted*(this: var BRepFeatGluer; f: TopoDS_Shape): bool {.
    importcpp: "IsDeleted", header: "BRepFeat_Gluer.hxx".}
proc modified*(this: var BRepFeatGluer; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFeat_Gluer.hxx".}

























