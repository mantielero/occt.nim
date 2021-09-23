##  Created on: 1997-02-18
##  Created by: Alexander BRIVIN
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../Standard/Standard_OStream,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of VrmlConverter_Drawer"
type
  VrmlConverter_WFDeflectionRestrictedFace* {.
      importcpp: "VrmlConverter_WFDeflectionRestrictedFace",
      header: "VrmlConverter_WFDeflectionRestrictedFace.hxx", bycopy.} = object


proc Add*(anOStream: var Standard_OStream; aFace: handle[BRepAdaptor_HSurface];
         aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_WFDeflectionRestrictedFace::Add(@)",
    header: "VrmlConverter_WFDeflectionRestrictedFace.hxx".}
proc AddUIso*(anOStream: var Standard_OStream; aFace: handle[BRepAdaptor_HSurface];
             aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_WFDeflectionRestrictedFace::AddUIso(@)",
    header: "VrmlConverter_WFDeflectionRestrictedFace.hxx".}
proc AddVIso*(anOStream: var Standard_OStream; aFace: handle[BRepAdaptor_HSurface];
             aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_WFDeflectionRestrictedFace::AddVIso(@)",
    header: "VrmlConverter_WFDeflectionRestrictedFace.hxx".}
proc Add*(anOStream: var Standard_OStream; aFace: handle[BRepAdaptor_HSurface];
         DrawUIso: Standard_Boolean; DrawVIso: Standard_Boolean;
         Deflection: Standard_Real; NBUiso: Standard_Integer;
         NBViso: Standard_Integer; aDrawer: handle[VrmlConverter_Drawer]) {.
    importcpp: "VrmlConverter_WFDeflectionRestrictedFace::Add(@)",
    header: "VrmlConverter_WFDeflectionRestrictedFace.hxx".}