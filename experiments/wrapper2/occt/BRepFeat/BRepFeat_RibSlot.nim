##  Created on: 1997-10-08
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopoDS/TopoDS_Shape,
  BRepFeat_PerfSelection, ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopTools/TopTools_ListOfShape,
  BRepFeat_StatusError, ../BRepBuilderAPI/BRepBuilderAPI_MakeShape,
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Geom_Plane"
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Face"
discard "forward decl of Geom_Curve"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of LocOpe_Gluer"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
type
  BRepFeat_RibSlot* {.importcpp: "BRepFeat_RibSlot",
                     header: "BRepFeat_RibSlot.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## true
                                                                                            ## if
                                                                                            ## F
                                                                                            ## a
                                                                                            ## TopoDS_Shape
                                                                                            ## of
                                                                                            ## type
                                                                                            ## edge
                                                                                            ## or
                                                                                            ## face
                                                                                            ## has
                                                                                            ## been
                                                                                            ## deleted.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Redefines
                                                                                            ## the
                                                                                            ## empty
                                                                                            ## constructor.


proc IsDeleted*(this: var BRepFeat_RibSlot; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFeat_RibSlot.hxx".}
proc Modified*(this: var BRepFeat_RibSlot; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFeat_RibSlot.hxx".}
proc Generated*(this: var BRepFeat_RibSlot; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFeat_RibSlot.hxx".}
proc FirstShape*(this: BRepFeat_RibSlot): TopTools_ListOfShape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFeat_RibSlot.hxx".}
proc LastShape*(this: BRepFeat_RibSlot): TopTools_ListOfShape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFeat_RibSlot.hxx".}
proc FacesForDraft*(this: BRepFeat_RibSlot): TopTools_ListOfShape {.noSideEffect,
    importcpp: "FacesForDraft", header: "BRepFeat_RibSlot.hxx".}
proc NewEdges*(this: BRepFeat_RibSlot): TopTools_ListOfShape {.noSideEffect,
    importcpp: "NewEdges", header: "BRepFeat_RibSlot.hxx".}
proc TgtEdges*(this: BRepFeat_RibSlot): TopTools_ListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "BRepFeat_RibSlot.hxx".}
proc IntPar*(C: handle[Geom_Curve]; P: gp_Pnt): Standard_Real {.
    importcpp: "BRepFeat_RibSlot::IntPar(@)", header: "BRepFeat_RibSlot.hxx".}
proc ChoiceOfFaces*(faces: var TopTools_ListOfShape; cc: handle[Geom_Curve];
                   par: Standard_Real; bnd: Standard_Real; Pln: handle[Geom_Plane]): TopoDS_Face {.
    importcpp: "BRepFeat_RibSlot::ChoiceOfFaces(@)",
    header: "BRepFeat_RibSlot.hxx".}
proc CurrentStatusError*(this: BRepFeat_RibSlot): BRepFeat_StatusError {.
    noSideEffect, importcpp: "CurrentStatusError", header: "BRepFeat_RibSlot.hxx".}