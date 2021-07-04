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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopTools/TopTools_DataMapOfShapeShape,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Boolean,
  ../Message/Message_ProgressRange

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


proc ApplyModifier*(S: TopoDS_Shape; M: handle[BRepTools_Modification];
                   context: var TopTools_DataMapOfShapeShape;
                   MD: var BRepTools_Modifier; theProgress: Message_ProgressRange = Message_ProgressRange();
                   aReShape: handle[ShapeBuild_ReShape] = nil): TopoDS_Shape {.
    importcpp: "ShapeCustom::ApplyModifier(@)", header: "ShapeCustom.hxx".}
proc DirectFaces*(S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::DirectFaces(@)", header: "ShapeCustom.hxx".}
proc ScaleShape*(S: TopoDS_Shape; scale: Standard_Real): TopoDS_Shape {.
    importcpp: "ShapeCustom::ScaleShape(@)", header: "ShapeCustom.hxx".}
proc BSplineRestriction*(S: TopoDS_Shape; Tol3d: Standard_Real; Tol2d: Standard_Real;
                        MaxDegree: Standard_Integer;
                        MaxNbSegment: Standard_Integer;
                        Continuity3d: GeomAbs_Shape; Continuity2d: GeomAbs_Shape;
                        Degree: Standard_Boolean; Rational: Standard_Boolean;
                        aParameters: handle[ShapeCustom_RestrictionParameters]): TopoDS_Shape {.
    importcpp: "ShapeCustom::BSplineRestriction(@)", header: "ShapeCustom.hxx".}
proc ConvertToRevolution*(S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::ConvertToRevolution(@)", header: "ShapeCustom.hxx".}
proc SweptToElementary*(S: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "ShapeCustom::SweptToElementary(@)", header: "ShapeCustom.hxx".}
proc ConvertToBSpline*(S: TopoDS_Shape; extrMode: Standard_Boolean;
                      revolMode: Standard_Boolean; offsetMode: Standard_Boolean;
                      planeMode: Standard_Boolean = Standard_False): TopoDS_Shape {.
    importcpp: "ShapeCustom::ConvertToBSpline(@)", header: "ShapeCustom.hxx".}