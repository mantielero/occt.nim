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


proc createAspectFillArea3d*(theDr: Handle[MeshVS_Drawer]; useDefaults: bool = true): Handle[
    Graphic3dAspectFillArea3d] {.importcpp: "MeshVS_Tool::CreateAspectFillArea3d(@)",
                                header: "MeshVS_Tool.hxx".}
proc createAspectFillArea3d*(theDr: Handle[MeshVS_Drawer];
                            mat: Graphic3dMaterialAspect; useDefaults: bool = true): Handle[
    Graphic3dAspectFillArea3d] {.importcpp: "MeshVS_Tool::CreateAspectFillArea3d(@)",
                                header: "MeshVS_Tool.hxx".}
proc createAspectLine3d*(theDr: Handle[MeshVS_Drawer]; useDefaults: bool = true): Handle[
    Graphic3dAspectLine3d] {.importcpp: "MeshVS_Tool::CreateAspectLine3d(@)",
                            header: "MeshVS_Tool.hxx".}
proc createAspectMarker3d*(theDr: Handle[MeshVS_Drawer]; useDefaults: bool = true): Handle[
    Graphic3dAspectMarker3d] {.importcpp: "MeshVS_Tool::CreateAspectMarker3d(@)",
                              header: "MeshVS_Tool.hxx".}
proc createAspectText3d*(theDr: Handle[MeshVS_Drawer]; useDefaults: bool = true): Handle[
    Graphic3dAspectText3d] {.importcpp: "MeshVS_Tool::CreateAspectText3d(@)",
                            header: "MeshVS_Tool.hxx".}
proc getNormal*(nodes: TColStdArray1OfReal; norm: var Vec): bool {.
    importcpp: "MeshVS_Tool::GetNormal(@)", header: "MeshVS_Tool.hxx".}
proc getAverageNormal*(nodes: TColStdArray1OfReal; norm: var Vec): bool {.
    importcpp: "MeshVS_Tool::GetAverageNormal(@)", header: "MeshVS_Tool.hxx".}
