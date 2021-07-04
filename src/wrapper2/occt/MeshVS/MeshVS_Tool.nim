##  Created on: 2003-12-17
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Graphic3d_AspectFillArea3d"
discard "forward decl of MeshVS_Drawer"
discard "forward decl of Graphic3d_MaterialAspect"
discard "forward decl of Graphic3d_AspectLine3d"
discard "forward decl of Graphic3d_AspectMarker3d"
discard "forward decl of Graphic3d_AspectText3d"
discard "forward decl of gp_Vec"
type
  MeshVS_Tool* {.importcpp: "MeshVS_Tool", header: "MeshVS_Tool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Creates
                                                                                ## fill
                                                                                ## area
                                                                                ## aspect
                                                                                ## with
                                                                                ## values
                                                                                ## from
                                                                                ## Drawer
                                                                                ## according
                                                                                ## to
                                                                                ## keys
                                                                                ## from
                                                                                ## DrawerAttribute


proc CreateAspectFillArea3d*(theDr: handle[MeshVS_Drawer];
                            UseDefaults: Standard_Boolean = Standard_True): handle[
    Graphic3d_AspectFillArea3d] {.importcpp: "MeshVS_Tool::CreateAspectFillArea3d(@)",
                                 header: "MeshVS_Tool.hxx".}
proc CreateAspectFillArea3d*(theDr: handle[MeshVS_Drawer];
                            Mat: Graphic3d_MaterialAspect;
                            UseDefaults: Standard_Boolean = Standard_True): handle[
    Graphic3d_AspectFillArea3d] {.importcpp: "MeshVS_Tool::CreateAspectFillArea3d(@)",
                                 header: "MeshVS_Tool.hxx".}
proc CreateAspectLine3d*(theDr: handle[MeshVS_Drawer];
                        UseDefaults: Standard_Boolean = Standard_True): handle[
    Graphic3d_AspectLine3d] {.importcpp: "MeshVS_Tool::CreateAspectLine3d(@)",
                             header: "MeshVS_Tool.hxx".}
proc CreateAspectMarker3d*(theDr: handle[MeshVS_Drawer];
                          UseDefaults: Standard_Boolean = Standard_True): handle[
    Graphic3d_AspectMarker3d] {.importcpp: "MeshVS_Tool::CreateAspectMarker3d(@)",
                               header: "MeshVS_Tool.hxx".}
proc CreateAspectText3d*(theDr: handle[MeshVS_Drawer];
                        UseDefaults: Standard_Boolean = Standard_True): handle[
    Graphic3d_AspectText3d] {.importcpp: "MeshVS_Tool::CreateAspectText3d(@)",
                             header: "MeshVS_Tool.hxx".}
proc GetNormal*(Nodes: TColStd_Array1OfReal; Norm: var gp_Vec): Standard_Boolean {.
    importcpp: "MeshVS_Tool::GetNormal(@)", header: "MeshVS_Tool.hxx".}
proc GetAverageNormal*(Nodes: TColStd_Array1OfReal; Norm: var gp_Vec): Standard_Boolean {.
    importcpp: "MeshVS_Tool::GetAverageNormal(@)", header: "MeshVS_Tool.hxx".}