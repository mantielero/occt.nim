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

discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_Curve"
discard "forward decl of LocOpe_Gluer"
discard "forward decl of BRepAlgoAPI_BooleanOperation"
type
  BRepFeatForm* {.importcpp: "BRepFeat_Form", header: "BRepFeat_Form.hxx", bycopy.} = object of BRepBuilderAPI_MakeShape ##
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


proc modified*(this: var BRepFeatForm; f: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Modified", header: "BRepFeat_Form.hxx".}
proc generated*(this: var BRepFeatForm; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepFeat_Form.hxx".}
proc isDeleted*(this: var BRepFeatForm; s: TopoDS_Shape): StandardBoolean {.
    importcpp: "IsDeleted", header: "BRepFeat_Form.hxx".}
proc firstShape*(this: BRepFeatForm): TopToolsListOfShape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFeat_Form.hxx".}
proc lastShape*(this: BRepFeatForm): TopToolsListOfShape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFeat_Form.hxx".}
proc newEdges*(this: BRepFeatForm): TopToolsListOfShape {.noSideEffect,
    importcpp: "NewEdges", header: "BRepFeat_Form.hxx".}
proc tgtEdges*(this: BRepFeatForm): TopToolsListOfShape {.noSideEffect,
    importcpp: "TgtEdges", header: "BRepFeat_Form.hxx".}
proc basisShapeValid*(this: var BRepFeatForm) {.importcpp: "BasisShapeValid",
    header: "BRepFeat_Form.hxx".}
proc generatedShapeValid*(this: var BRepFeatForm) {.
    importcpp: "GeneratedShapeValid", header: "BRepFeat_Form.hxx".}
proc shapeFromValid*(this: var BRepFeatForm) {.importcpp: "ShapeFromValid",
    header: "BRepFeat_Form.hxx".}
proc shapeUntilValid*(this: var BRepFeatForm) {.importcpp: "ShapeUntilValid",
    header: "BRepFeat_Form.hxx".}
proc gluedFacesValid*(this: var BRepFeatForm) {.importcpp: "GluedFacesValid",
    header: "BRepFeat_Form.hxx".}
proc sketchFaceValid*(this: var BRepFeatForm) {.importcpp: "SketchFaceValid",
    header: "BRepFeat_Form.hxx".}
proc perfSelectionValid*(this: var BRepFeatForm) {.importcpp: "PerfSelectionValid",
    header: "BRepFeat_Form.hxx".}
proc curves*(this: var BRepFeatForm; s: var TColGeomSequenceOfCurve) {.
    importcpp: "Curves", header: "BRepFeat_Form.hxx".}
proc barycCurve*(this: var BRepFeatForm): Handle[GeomCurve] {.
    importcpp: "BarycCurve", header: "BRepFeat_Form.hxx".}
proc currentStatusError*(this: BRepFeatForm): BRepFeatStatusError {.noSideEffect,
    importcpp: "CurrentStatusError", header: "BRepFeat_Form.hxx".}

