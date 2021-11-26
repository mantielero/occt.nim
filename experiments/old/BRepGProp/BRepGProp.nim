##  Created on: 1992-12-04
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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
discard "forward decl of GProp_GProps"
discard "forward decl of gp_Pln"
discard "forward decl of BRepGProp_EdgeTool"
discard "forward decl of BRepGProp_Face"
discard "forward decl of BRepGProp_Domain"
discard "forward decl of BRepGProp_Cinert"
discard "forward decl of BRepGProp_Sinert"
discard "forward decl of BRepGProp_Vinert"
discard "forward decl of BRepGProp_VinertGK"
discard "forward decl of BRepGProp_UFunction"
discard "forward decl of BRepGProp_TFunction"
discard "forward decl of gp_XYZ"
type
  BRepGProp* {.importcpp: "BRepGProp", header: "BRepGProp.hxx", bycopy.} = object


proc `new`*(this: var BRepGProp; theSize: csize_t): pointer {.
    importcpp: "BRepGProp::operator new", header: "BRepGProp.hxx".}
proc `delete`*(this: var BRepGProp; theAddress: pointer) {.
    importcpp: "BRepGProp::operator delete", header: "BRepGProp.hxx".}
proc `new[]`*(this: var BRepGProp; theSize: csize_t): pointer {.
    importcpp: "BRepGProp::operator new[]", header: "BRepGProp.hxx".}
proc `delete[]`*(this: var BRepGProp; theAddress: pointer) {.
    importcpp: "BRepGProp::operator delete[]", header: "BRepGProp.hxx".}
proc `new`*(this: var BRepGProp; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp::operator new", header: "BRepGProp.hxx".}
proc `delete`*(this: var BRepGProp; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp::operator delete", header: "BRepGProp.hxx".}
proc linearProperties*(s: TopoDS_Shape; lProps: var GPropGProps;
                      skipShared: StandardBoolean = false;
                      useTriangulation: StandardBoolean = false) {.
    importcpp: "BRepGProp::LinearProperties(@)", header: "BRepGProp.hxx".}
proc surfaceProperties*(s: TopoDS_Shape; sProps: var GPropGProps;
                       skipShared: StandardBoolean = false;
                       useTriangulation: StandardBoolean = false) {.
    importcpp: "BRepGProp::SurfaceProperties(@)", header: "BRepGProp.hxx".}
proc surfaceProperties*(s: TopoDS_Shape; sProps: var GPropGProps; eps: StandardReal;
                       skipShared: StandardBoolean = false): StandardReal {.
    importcpp: "BRepGProp::SurfaceProperties(@)", header: "BRepGProp.hxx".}
proc volumeProperties*(s: TopoDS_Shape; vProps: var GPropGProps;
                      onlyClosed: StandardBoolean = false;
                      skipShared: StandardBoolean = false;
                      useTriangulation: StandardBoolean = false) {.
    importcpp: "BRepGProp::VolumeProperties(@)", header: "BRepGProp.hxx".}
proc volumeProperties*(s: TopoDS_Shape; vProps: var GPropGProps; eps: StandardReal;
                      onlyClosed: StandardBoolean = false;
                      skipShared: StandardBoolean = false): StandardReal {.
    importcpp: "BRepGProp::VolumeProperties(@)", header: "BRepGProp.hxx".}
proc volumePropertiesGK*(s: TopoDS_Shape; vProps: var GPropGProps;
                        eps: StandardReal = 0.001;
                        onlyClosed: StandardBoolean = false;
                        isUseSpan: StandardBoolean = false;
                        cGFlag: StandardBoolean = false;
                        iFlag: StandardBoolean = false;
                        skipShared: StandardBoolean = false): StandardReal {.
    importcpp: "BRepGProp::VolumePropertiesGK(@)", header: "BRepGProp.hxx".}
proc volumePropertiesGK*(s: TopoDS_Shape; vProps: var GPropGProps; thePln: Pln;
                        eps: StandardReal = 0.001;
                        onlyClosed: StandardBoolean = false;
                        isUseSpan: StandardBoolean = false;
                        cGFlag: StandardBoolean = false;
                        iFlag: StandardBoolean = false;
                        skipShared: StandardBoolean = false): StandardReal {.
    importcpp: "BRepGProp::VolumePropertiesGK(@)", header: "BRepGProp.hxx".}