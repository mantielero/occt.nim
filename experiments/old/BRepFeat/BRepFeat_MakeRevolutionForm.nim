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

discard "forward decl of Geom_Plane"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Ax1"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of gp_Pnt"
type
  BRepFeatMakeRevolutionForm* {.importcpp: "BRepFeat_MakeRevolutionForm",
                               header: "BRepFeat_MakeRevolutionForm.hxx", bycopy.} = object of BRepFeatRibSlot


proc `new`*(this: var BRepFeatMakeRevolutionForm; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator new",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc `delete`*(this: var BRepFeatMakeRevolutionForm; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator delete",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc `new[]`*(this: var BRepFeatMakeRevolutionForm; theSize: csize_t): pointer {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator new[]",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc `delete[]`*(this: var BRepFeatMakeRevolutionForm; theAddress: pointer) {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator delete[]",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc `new`*(this: var BRepFeatMakeRevolutionForm; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator new",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc `delete`*(this: var BRepFeatMakeRevolutionForm; a2: pointer; a3: pointer) {.
    importcpp: "BRepFeat_MakeRevolutionForm::operator delete",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc constructBRepFeatMakeRevolutionForm*(): BRepFeatMakeRevolutionForm {.
    constructor, importcpp: "BRepFeat_MakeRevolutionForm(@)",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc constructBRepFeatMakeRevolutionForm*(sbase: TopoDS_Shape; w: TopoDS_Wire;
    plane: Handle[GeomPlane]; axis: Ax1; height1: StandardReal; height2: StandardReal;
    fuse: int; sliding: var StandardBoolean): BRepFeatMakeRevolutionForm {.
    constructor, importcpp: "BRepFeat_MakeRevolutionForm(@)",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc init*(this: var BRepFeatMakeRevolutionForm; sbase: TopoDS_Shape; w: TopoDS_Wire;
          plane: Handle[GeomPlane]; axis: Ax1; height1: StandardReal;
          height2: StandardReal; fuse: int; sliding: var StandardBoolean) {.
    importcpp: "Init", header: "BRepFeat_MakeRevolutionForm.hxx".}
proc add*(this: var BRepFeatMakeRevolutionForm; e: TopoDS_Edge; onFace: TopoDS_Face) {.
    importcpp: "Add", header: "BRepFeat_MakeRevolutionForm.hxx".}
proc perform*(this: var BRepFeatMakeRevolutionForm) {.importcpp: "Perform",
    header: "BRepFeat_MakeRevolutionForm.hxx".}
proc propagate*(this: var BRepFeatMakeRevolutionForm; L: var TopToolsListOfShape;
               f: TopoDS_Face; fPoint: Pnt; lPoint: Pnt;
               falseside: var StandardBoolean): StandardBoolean {.
    importcpp: "Propagate", header: "BRepFeat_MakeRevolutionForm.hxx".}