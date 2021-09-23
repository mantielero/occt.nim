##  Created on: 1997-10-14
##  Created by: Olga KOULECHOVA
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
  ../Standard/Standard_Handle, ../gp/gp_Ax1, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, BRepFeat_RibSlot, ../Standard/Standard_Integer

discard "forward decl of Geom_Plane"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepFeat_MakeRevolutionForm* {.importcpp: "BRepFeat_MakeRevolutionForm",
                                header: "BRepFeat_MakeRevolutionForm.hxx", bycopy.} = object of BRepFeat_RibSlot ##
                                                                                                          ## !
                                                                                                          ## initializes
                                                                                                          ## the
                                                                                                          ## linear
                                                                                                          ## form
                                                                                                          ## class.


proc constructBRepFeat_MakeRevolutionForm*(): BRepFeat_MakeRevolutionForm {.
    constructor, importcpp: "BRepFeat_MakeRevolutionForm(@)",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc constructBRepFeat_MakeRevolutionForm*(Sbase: TopoDS_Shape; W: TopoDS_Wire;
    Plane: handle[Geom_Plane]; Axis: gp_Ax1; Height1: Standard_Real;
    Height2: Standard_Real; Fuse: Standard_Integer; Sliding: var Standard_Boolean): BRepFeat_MakeRevolutionForm {.
    constructor, importcpp: "BRepFeat_MakeRevolutionForm(@)",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc Init*(this: var BRepFeat_MakeRevolutionForm; Sbase: TopoDS_Shape; W: TopoDS_Wire;
          Plane: handle[Geom_Plane]; Axis: gp_Ax1; Height1: Standard_Real;
          Height2: Standard_Real; Fuse: Standard_Integer;
          Sliding: var Standard_Boolean) {.importcpp: "Init", header: "BRepFeat_MakeRevolutionForm.hxx".}
proc Add*(this: var BRepFeat_MakeRevolutionForm; E: TopoDS_Edge; OnFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeRevolutionForm.hxx".}
proc Perform*(this: var BRepFeat_MakeRevolutionForm) {.importcpp: "Perform",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc Propagate*(this: var BRepFeat_MakeRevolutionForm; L: var TopTools_ListOfShape;
               F: TopoDS_Face; FPoint: gp_Pnt; LPoint: gp_Pnt;
               falseside: var Standard_Boolean): Standard_Boolean {.
    importcpp: "Propagate", header: "BRepFeat_MakeRevolutionForm.hxx".}