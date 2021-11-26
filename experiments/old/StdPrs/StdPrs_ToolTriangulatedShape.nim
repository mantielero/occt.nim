##  Copyright (c) 2013 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Connect"
type
  StdPrsToolTriangulatedShape* {.importcpp: "StdPrs_ToolTriangulatedShape",
                                header: "StdPrs_ToolTriangulatedShape.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Similar
                                                                                         ## to
                                                                                         ## BRepTools::Triangulation()
                                                                                         ## but
                                                                                         ## without
                                                                                         ## extra
                                                                                         ## checks.
                                                                                         ##
                                                                                         ## !
                                                                                         ## @return
                                                                                         ## true
                                                                                         ## if
                                                                                         ## all
                                                                                         ## faces
                                                                                         ## within
                                                                                         ## shape
                                                                                         ## are
                                                                                         ## triangulated.


proc isTriangulated*(theShape: TopoDS_Shape): bool {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsTriangulated(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc isClosed*(theShape: TopoDS_Shape): bool {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsClosed(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc computeNormals*(theFace: TopoDS_Face; theTris: Handle[PolyTriangulation]) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ComputeNormals(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc computeNormals*(theFace: TopoDS_Face; theTris: Handle[PolyTriangulation];
                    thePolyConnect: var PolyConnect) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ComputeNormals(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc normal*(theFace: TopoDS_Face; thePolyConnect: var PolyConnect;
            theNormals: var TColgpArray1OfDir) {.
    importcpp: "StdPrs_ToolTriangulatedShape::Normal(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc getDeflection*(theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]): cfloat {.
    importcpp: "StdPrs_ToolTriangulatedShape::GetDeflection(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc isTessellated*(theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsTessellated(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc tessellate*(theShape: TopoDS_Shape; theDrawer: Handle[Prs3dDrawer]): bool {.
    importcpp: "StdPrs_ToolTriangulatedShape::Tessellate(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc clearOnOwnDeflectionChange*(theShape: TopoDS_Shape;
                                theDrawer: Handle[Prs3dDrawer];
                                theToResetCoeff: bool) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ClearOnOwnDeflectionChange(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}

























