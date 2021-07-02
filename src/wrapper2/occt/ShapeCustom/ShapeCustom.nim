##  Created on: 1998-06-03
##  Created by: data exchange team
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of BRepTools_Modification"
discard "forward decl of BRepTools_Modifier"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeCustom_RestrictionParameters"
discard "forward decl of ShapeCustom_Surface"
discard "forward decl of ShapeCustom_Curve"
discard "forward decl of ShapeCustom_Curve2d"
discard "forward decl of ShapeCustom_RestrictionParameters"
discard "forward decl of ShapeCustom_Modification"
discard "forward decl of ShapeCustom_DirectModification"
discard "forward decl of ShapeCustom_TrsfModification"
discard "forward decl of ShapeCustom_BSplineRestriction"
discard "forward decl of ShapeCustom_ConvertToRevolution"
discard "forward decl of ShapeCustom_SweptToElementary"
discard "forward decl of ShapeCustom_ConvertToBSpline"
type
  ShapeCustom* {.importcpp: "ShapeCustom", header: "ShapeCustom.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Applies
                                                                                ## modifier
                                                                                ## to
                                                                                ## shape
                                                                                ## and
                                                                                ## checks
                                                                                ## sharing
                                                                                ## in
                                                                                ## the
                                                                                ## case
                                                                                ## assemblies.


proc applyModifier*(s: TopoDS_Shape; m: Handle[BRepToolsModification];
                   context: var TopToolsDataMapOfShapeShape;
                   md: var BRepToolsModifier;
                   theProgress: MessageProgressRange = messageProgressRange();
                   aReShape: Handle[ShapeBuildReShape] = nil): TopoDS_Shape {.
    importcpp: "ShapeCustom::ApplyModifier(@)", header: "ShapeCustom.hxx".}
proc directFaces*(s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::DirectFaces(@)", header: "ShapeCustom.hxx".}
proc scaleShape*(s: TopoDS_Shape; scale: StandardReal): TopoDS_Shape {.
    importcpp: "ShapeCustom::ScaleShape(@)", header: "ShapeCustom.hxx".}
proc bSplineRestriction*(s: TopoDS_Shape; tol3d: StandardReal; tol2d: StandardReal;
                        maxDegree: StandardInteger; maxNbSegment: StandardInteger;
                        continuity3d: GeomAbsShape; continuity2d: GeomAbsShape;
                        degree: StandardBoolean; rational: StandardBoolean;
                        aParameters: Handle[ShapeCustomRestrictionParameters]): TopoDS_Shape {.
    importcpp: "ShapeCustom::BSplineRestriction(@)", header: "ShapeCustom.hxx".}
proc convertToRevolution*(s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::ConvertToRevolution(@)", header: "ShapeCustom.hxx".}
proc sweptToElementary*(s: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::SweptToElementary(@)", header: "ShapeCustom.hxx".}
proc convertToBSpline*(s: TopoDS_Shape; extrMode: StandardBoolean;
                      revolMode: StandardBoolean; offsetMode: StandardBoolean;
                      planeMode: StandardBoolean = standardFalse): TopoDS_Shape {.
    importcpp: "ShapeCustom::ConvertToBSpline(@)", header: "ShapeCustom.hxx".}

