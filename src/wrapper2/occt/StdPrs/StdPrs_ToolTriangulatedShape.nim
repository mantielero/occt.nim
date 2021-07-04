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

import
  ../Poly/Poly_Connect, ../Poly/Poly_Triangulation, ../Prs3d/Prs3d_Drawer,
  ../Standard/Standard, ../Standard/Standard_Macro, ../TColgp/TColgp_Array1OfDir

discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Poly_Triangulation"
discard "forward decl of Poly_Connect"
type
  StdPrs_ToolTriangulatedShape* {.importcpp: "StdPrs_ToolTriangulatedShape",
                                 header: "StdPrs_ToolTriangulatedShape.hxx",
                                 bycopy.} = object ## ! Similar to BRepTools::Triangulation() but without extra checks.
                                                ## ! @return true if all faces within shape are triangulated.


proc IsTriangulated*(theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsTriangulated(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc IsClosed*(theShape: TopoDS_Shape): Standard_Boolean {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsClosed(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc ComputeNormals*(theFace: TopoDS_Face; theTris: handle[Poly_Triangulation]) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ComputeNormals(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc ComputeNormals*(theFace: TopoDS_Face; theTris: handle[Poly_Triangulation];
                    thePolyConnect: var Poly_Connect) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ComputeNormals(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc Normal*(theFace: TopoDS_Face; thePolyConnect: var Poly_Connect;
            theNormals: var TColgp_Array1OfDir) {.
    importcpp: "StdPrs_ToolTriangulatedShape::Normal(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc GetDeflection*(theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer]): Standard_Real {.
    importcpp: "StdPrs_ToolTriangulatedShape::GetDeflection(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc IsTessellated*(theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_ToolTriangulatedShape::IsTessellated(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc Tessellate*(theShape: TopoDS_Shape; theDrawer: handle[Prs3d_Drawer]): Standard_Boolean {.
    importcpp: "StdPrs_ToolTriangulatedShape::Tessellate(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}
proc ClearOnOwnDeflectionChange*(theShape: TopoDS_Shape;
                                theDrawer: handle[Prs3d_Drawer];
                                theToResetCoeff: Standard_Boolean) {.
    importcpp: "StdPrs_ToolTriangulatedShape::ClearOnOwnDeflectionChange(@)",
    header: "StdPrs_ToolTriangulatedShape.hxx".}