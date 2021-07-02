##  Created on: 1993-01-11
##  Created by: SIVA
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

discard "forward decl of IGESSolid_Protocol"
discard "forward decl of IGESSolid_Block"
discard "forward decl of IGESSolid_RightAngularWedge"
discard "forward decl of IGESSolid_Cylinder"
discard "forward decl of IGESSolid_ConeFrustum"
discard "forward decl of IGESSolid_Sphere"
discard "forward decl of IGESSolid_Torus"
discard "forward decl of IGESSolid_SolidOfRevolution"
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
discard "forward decl of IGESSolid_Ellipsoid"
discard "forward decl of IGESSolid_BooleanTree"
discard "forward decl of IGESSolid_SelectedComponent"
discard "forward decl of IGESSolid_SolidAssembly"
discard "forward decl of IGESSolid_ManifoldSolid"
discard "forward decl of IGESSolid_PlaneSurface"
discard "forward decl of IGESSolid_CylindricalSurface"
discard "forward decl of IGESSolid_ConicalSurface"
discard "forward decl of IGESSolid_SphericalSurface"
discard "forward decl of IGESSolid_ToroidalSurface"
discard "forward decl of IGESSolid_SolidInstance"
discard "forward decl of IGESSolid_VertexList"
discard "forward decl of IGESSolid_EdgeList"
discard "forward decl of IGESSolid_Loop"
discard "forward decl of IGESSolid_Face"
discard "forward decl of IGESSolid_Shell"
discard "forward decl of IGESSolid_ToolBlock"
discard "forward decl of IGESSolid_ToolRightAngularWedge"
discard "forward decl of IGESSolid_ToolCylinder"
discard "forward decl of IGESSolid_ToolConeFrustum"
discard "forward decl of IGESSolid_ToolSphere"
discard "forward decl of IGESSolid_ToolTorus"
discard "forward decl of IGESSolid_ToolSolidOfRevolution"
discard "forward decl of IGESSolid_ToolSolidOfLinearExtrusion"
discard "forward decl of IGESSolid_ToolEllipsoid"
discard "forward decl of IGESSolid_ToolBooleanTree"
discard "forward decl of IGESSolid_ToolSelectedComponent"
discard "forward decl of IGESSolid_ToolSolidAssembly"
discard "forward decl of IGESSolid_ToolManifoldSolid"
discard "forward decl of IGESSolid_ToolPlaneSurface"
discard "forward decl of IGESSolid_ToolCylindricalSurface"
discard "forward decl of IGESSolid_ToolConicalSurface"
discard "forward decl of IGESSolid_ToolSphericalSurface"
discard "forward decl of IGESSolid_ToolToroidalSurface"
discard "forward decl of IGESSolid_ToolSolidInstance"
discard "forward decl of IGESSolid_ToolVertexList"
discard "forward decl of IGESSolid_ToolEdgeList"
discard "forward decl of IGESSolid_ToolLoop"
discard "forward decl of IGESSolid_ToolFace"
discard "forward decl of IGESSolid_ToolShell"
discard "forward decl of IGESSolid_Protocol"
discard "forward decl of IGESSolid_ReadWriteModule"
discard "forward decl of IGESSolid_GeneralModule"
discard "forward decl of IGESSolid_SpecificModule"
discard "forward decl of IGESSolid_TopoBuilder"
type
  IGESSolid* {.importcpp: "IGESSolid", header: "IGESSolid.hxx", bycopy.} = object ## !
                                                                          ## Prepares
                                                                          ## dynamic data
                                                                          ## (Protocol,
                                                                          ## Modules) for this
                                                                          ## package


proc init*() {.importcpp: "IGESSolid::Init(@)", header: "IGESSolid.hxx".}
proc protocol*(): Handle[IGESSolidProtocol] {.importcpp: "IGESSolid::Protocol(@)",
    header: "IGESSolid.hxx".}

