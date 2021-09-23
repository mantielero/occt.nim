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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Vec, ../Standard/Standard_Real,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, BRepFeat_RibSlot,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

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
  BRepFeat_MakeLinearForm* {.importcpp: "BRepFeat_MakeLinearForm",
                            header: "BRepFeat_MakeLinearForm.hxx", bycopy.} = object of BRepFeat_RibSlot ##
                                                                                                  ## !
                                                                                                  ## initializes
                                                                                                  ## the
                                                                                                  ## linear
                                                                                                  ## form
                                                                                                  ## class


proc constructBRepFeat_MakeLinearForm*(): BRepFeat_MakeLinearForm {.constructor,
    importcpp: "BRepFeat_MakeLinearForm(@)", header: "BRepFeat_MakeLinearForm.hxx".}
proc constructBRepFeat_MakeLinearForm*(Sbase: TopoDS_Shape; W: TopoDS_Wire;
                                      P: handle[Geom_Plane]; Direction: gp_Vec;
                                      Direction1: gp_Vec; Fuse: Standard_Integer;
                                      Modify: Standard_Boolean): BRepFeat_MakeLinearForm {.
    constructor, importcpp: "BRepFeat_MakeLinearForm(@)",
    header: "BRepFeat_MakeLinearForm.hxx".}
proc Init*(this: var BRepFeat_MakeLinearForm; Sbase: TopoDS_Shape; W: TopoDS_Wire;
          P: handle[Geom_Plane]; Direction: gp_Vec; Direction1: gp_Vec;
          Fuse: Standard_Integer; Modify: Standard_Boolean) {.importcpp: "Init",
    header: "BRepFeat_MakeLinearForm.hxx".}
proc Add*(this: var BRepFeat_MakeLinearForm; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeLinearForm.hxx".}
proc Perform*(this: var BRepFeat_MakeLinearForm) {.importcpp: "Perform",
    header: "BRepFeat_MakeLinearForm.hxx".}
proc TransformShapeFU*(this: var BRepFeat_MakeLinearForm; flag: Standard_Integer) {.
    importcpp: "TransformShapeFU", header: "BRepFeat_MakeLinearForm.hxx".}
proc Propagate*(this: var BRepFeat_MakeLinearForm; L: var TopTools_ListOfShape;
               F: TopoDS_Face; FPoint: gp_Pnt; LPoint: gp_Pnt;
               falseside: var Standard_Boolean): Standard_Boolean {.
    importcpp: "Propagate", header: "BRepFeat_MakeLinearForm.hxx".}