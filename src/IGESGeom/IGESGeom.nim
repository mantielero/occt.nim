##  Created on: 1993-01-11
##  Created by: CKY / Contract Toubro-Larsen ( Kiran )
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of IGESGeom_Protocol"
discard "forward decl of IGESGeom_CircularArc"
discard "forward decl of IGESGeom_CompositeCurve"
discard "forward decl of IGESGeom_ConicArc"
discard "forward decl of IGESGeom_CopiousData"
discard "forward decl of IGESGeom_Plane"
discard "forward decl of IGESGeom_Line"
discard "forward decl of IGESGeom_SplineCurve"
discard "forward decl of IGESGeom_SplineSurface"
discard "forward decl of IGESGeom_Point"
discard "forward decl of IGESGeom_RuledSurface"
discard "forward decl of IGESGeom_SurfaceOfRevolution"
discard "forward decl of IGESGeom_TabulatedCylinder"
discard "forward decl of IGESGeom_Direction"
discard "forward decl of IGESGeom_TransformationMatrix"
discard "forward decl of IGESGeom_Flash"
discard "forward decl of IGESGeom_BSplineCurve"
discard "forward decl of IGESGeom_BSplineSurface"
discard "forward decl of IGESGeom_OffsetCurve"
discard "forward decl of IGESGeom_OffsetSurface"
discard "forward decl of IGESGeom_Boundary"
discard "forward decl of IGESGeom_CurveOnSurface"
discard "forward decl of IGESGeom_BoundedSurface"
discard "forward decl of IGESGeom_TrimmedSurface"
discard "forward decl of IGESGeom_ToolCircularArc"
discard "forward decl of IGESGeom_ToolCompositeCurve"
discard "forward decl of IGESGeom_ToolConicArc"
discard "forward decl of IGESGeom_ToolCopiousData"
discard "forward decl of IGESGeom_ToolPlane"
discard "forward decl of IGESGeom_ToolLine"
discard "forward decl of IGESGeom_ToolSplineCurve"
discard "forward decl of IGESGeom_ToolSplineSurface"
discard "forward decl of IGESGeom_ToolPoint"
discard "forward decl of IGESGeom_ToolRuledSurface"
discard "forward decl of IGESGeom_ToolSurfaceOfRevolution"
discard "forward decl of IGESGeom_ToolTabulatedCylinder"
discard "forward decl of IGESGeom_ToolDirection"
discard "forward decl of IGESGeom_ToolTransformationMatrix"
discard "forward decl of IGESGeom_ToolFlash"
discard "forward decl of IGESGeom_ToolBSplineCurve"
discard "forward decl of IGESGeom_ToolBSplineSurface"
discard "forward decl of IGESGeom_ToolOffsetCurve"
discard "forward decl of IGESGeom_ToolOffsetSurface"
discard "forward decl of IGESGeom_ToolBoundary"
discard "forward decl of IGESGeom_ToolCurveOnSurface"
discard "forward decl of IGESGeom_ToolBoundedSurface"
discard "forward decl of IGESGeom_ToolTrimmedSurface"
discard "forward decl of IGESGeom_Protocol"
discard "forward decl of IGESGeom_ReadWriteModule"
discard "forward decl of IGESGeom_GeneralModule"
discard "forward decl of IGESGeom_SpecificModule"
type
  IGESGeom* {.importcpp: "IGESGeom", header: "IGESGeom.hxx", bycopy.} = object ## ! Prepares dymanic data
                                                                       ## (Protocol, Modules) for this package


proc init*() {.importcpp: "IGESGeom::Init(@)", header: "IGESGeom.hxx".}
proc protocol*(): Handle[IGESGeomProtocol] {.importcpp: "IGESGeom::Protocol(@)",
    header: "IGESGeom.hxx".}

























