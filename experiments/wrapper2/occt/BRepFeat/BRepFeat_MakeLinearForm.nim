##  Created on: 1997-04-14
##  Created by: Olga PILLOT
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Plane"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Vec"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepFeatMakeLinearForm* {.importcpp: "BRepFeat_MakeLinearForm",
                           header: "BRepFeat_MakeLinearForm.hxx", bycopy.} = object of BRepFeatRibSlot ##
                                                                                                ## !
                                                                                                ## initializes
                                                                                                ## the
                                                                                                ## linear
                                                                                                ## form
                                                                                                ## class


proc constructBRepFeatMakeLinearForm*(): BRepFeatMakeLinearForm {.constructor,
    importcpp: "BRepFeat_MakeLinearForm(@)", header: "BRepFeat_MakeLinearForm.hxx".}
proc constructBRepFeatMakeLinearForm*(sbase: TopoDS_Shape; w: TopoDS_Wire;
                                     p: Handle[GeomPlane]; direction: Vec;
                                     direction1: Vec; fuse: int; modify: bool): BRepFeatMakeLinearForm {.
    constructor, importcpp: "BRepFeat_MakeLinearForm(@)",
    header: "BRepFeat_MakeLinearForm.hxx".}
proc init*(this: var BRepFeatMakeLinearForm; sbase: TopoDS_Shape; w: TopoDS_Wire;
          p: Handle[GeomPlane]; direction: Vec; direction1: Vec; fuse: int; modify: bool) {.
    importcpp: "Init", header: "BRepFeat_MakeLinearForm.hxx".}
proc add*(this: var BRepFeatMakeLinearForm; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeLinearForm.hxx".}
proc perform*(this: var BRepFeatMakeLinearForm) {.importcpp: "Perform",
    header: "BRepFeat_MakeLinearForm.hxx".}
proc transformShapeFU*(this: var BRepFeatMakeLinearForm; flag: int) {.
    importcpp: "TransformShapeFU", header: "BRepFeat_MakeLinearForm.hxx".}
proc propagate*(this: var BRepFeatMakeLinearForm; L: var TopToolsListOfShape;
               f: TopoDS_Face; fPoint: Pnt; lPoint: Pnt; falseside: var bool): bool {.
    importcpp: "Propagate", header: "BRepFeat_MakeLinearForm.hxx".}
