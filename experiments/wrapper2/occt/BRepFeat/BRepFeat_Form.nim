##  Created on: 1996-02-13
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_ListOfShape, BRepFeat_PerfSelection, ../TopoDS/TopoDS_Face,
  ../TopTools/TopTools_DataMapOfShapeShape, BRepFeat_StatusError,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape,
  ../TColGeom/TColGeom_SequenceOfCurve, ../Standard/Standard_Integer

discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
discard "forward decl of LocOpe_Gluer"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
type
  BRepFeat_Form* {.importcpp: "BRepFeat_Form", header: "BRepFeat_Form.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
                                                                                                                ## !
                                                                                                                ## returns
                                                                                                                ## the
                                                                                                                ## list
                                                                                                                ## of
                                                                                                                ## generated
                                                                                                                ## Faces.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## Redefines
                                                                                                                ## the
                                                                                                                ## empty
                                                                                                                ## constructor.


proc Modified*(this: var BRepFeat_Form; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFeat_Form.hxx".}
proc Generated*(this: var BRepFeat_Form; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFeat_Form.hxx".}
proc IsDeleted*(this: var BRepFeat_Form; S: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFeat_Form.hxx".}
proc FirstShape*(this: BRepFeat_Form): TopTools_ListOfShape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFeat_Form.hxx".}
proc LastShape*(this: BRepFeat_Form): TopTools_ListOfShape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFeat_Form.hxx".}
proc NewEdges*(this: BRepFeat_Form): TopTools_ListOfShape {.noSideEffect,
    importcpp: "NewEdges", header: "BRepFeat_Form.hxx".}
proc TgtEdges*(this: BRepFeat_Form): TopTools_ListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "BRepFeat_Form.hxx".}
proc BasisShapeValid*(this: var BRepFeat_Form) {.importcpp: "BasisShapeValid",
    header: "BRepFeat_Form.hxx".}
proc GeneratedShapeValid*(this: var BRepFeat_Form) {.
    importcpp: "GeneratedShapeValid", header: "BRepFeat_Form.hxx".}
proc ShapeFromValid*(this: var BRepFeat_Form) {.importcpp: "ShapeFromValid",
    header: "BRepFeat_Form.hxx".}
proc ShapeUntilValid*(this: var BRepFeat_Form) {.importcpp: "ShapeUntilValid",
    header: "BRepFeat_Form.hxx".}
proc GluedFacesValid*(this: var BRepFeat_Form) {.importcpp: "GluedFacesValid",
    header: "BRepFeat_Form.hxx".}
proc SketchFaceValid*(this: var BRepFeat_Form) {.importcpp: "SketchFaceValid",
    header: "BRepFeat_Form.hxx".}
proc PerfSelectionValid*(this: var BRepFeat_Form) {.importcpp: "PerfSelectionValid",
    header: "BRepFeat_Form.hxx".}
proc Curves*(this: var BRepFeat_Form; S: var TColGeom_SequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_Form.hxx".}
proc BarycCurve*(this: var BRepFeat_Form): handle[Geom_Curve] {.
    importcpp: "BarycCurve", header: "BRepFeat_Form.hxx".}
proc CurrentStatusError*(this: BRepFeat_Form): BRepFeat_StatusError {.noSideEffect,
    importcpp: "CurrentStatusError", header: "BRepFeat_Form.hxx".}