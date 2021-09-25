##  Created on: 1997-02-21
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of VrmlConverter_Drawer"
discard "forward decl of TopoDS_Face"
discard "forward decl of Poly_Connect"
type
  VrmlConverterShadedShape* {.importcpp: "VrmlConverter_ShadedShape",
                             header: "VrmlConverter_ShadedShape.hxx", bycopy.} = object


proc add*(anOStream: var StandardOStream; aShape: TopoDS_Shape;
         aDrawer: Handle[VrmlConverterDrawer]) {.
    importcpp: "VrmlConverter_ShadedShape::Add(@)",
    header: "VrmlConverter_ShadedShape.hxx".}
proc computeNormal*(aFace: TopoDS_Face; pc: var PolyConnect;
                   nor: var TColgpArray1OfDir) {.
    importcpp: "VrmlConverter_ShadedShape::ComputeNormal(@)",
    header: "VrmlConverter_ShadedShape.hxx".}
