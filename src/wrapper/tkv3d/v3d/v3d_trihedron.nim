import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkernel/quantity/quantity_types
import v3d_types





##  Created on: 2016-10-11
##  Created by: Ilya SEVRIKOV
##  Copyright (c) 2016 OPEN CASCADE SAS
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



proc newV3dTrihedron*(): V3dTrihedron {.cdecl, constructor,
                                     importcpp: "V3d_Trihedron(@)", header: "V3d_Trihedron.hxx".}
proc destroyV3dTrihedron*(this: var V3dTrihedron) {.cdecl,
    importcpp: "#.~V3d_Trihedron()", header: "V3d_Trihedron.hxx".}
proc setWireframe*(this: var V3dTrihedron; theAsWireframe: bool) {.cdecl,
    importcpp: "SetWireframe", header: "V3d_Trihedron.hxx".}
proc setPosition*(this: var V3dTrihedron; thePosition: AspectTypeOfTriedronPosition) {.
    cdecl, importcpp: "SetPosition", header: "V3d_Trihedron.hxx".}
proc setScale*(this: var V3dTrihedron; theScale: cfloat) {.cdecl,
    importcpp: "SetScale", header: "V3d_Trihedron.hxx".}
proc setSizeRatio*(this: var V3dTrihedron; theRatio: cfloat) {.cdecl,
    importcpp: "SetSizeRatio", header: "V3d_Trihedron.hxx".}
proc setArrowDiameter*(this: var V3dTrihedron; theDiam: cfloat) {.cdecl,
    importcpp: "SetArrowDiameter", header: "V3d_Trihedron.hxx".}
proc setNbFacets*(this: var V3dTrihedron; theNbFacets: cint) {.cdecl,
    importcpp: "SetNbFacets", header: "V3d_Trihedron.hxx".}
proc setLabelsColor*(this: var V3dTrihedron; theColor: QuantityColor) {.cdecl,
    importcpp: "SetLabelsColor", header: "V3d_Trihedron.hxx".}
proc setArrowsColor*(this: var V3dTrihedron; theXColor: QuantityColor;
                    theYColor: QuantityColor; theZColor: QuantityColor) {.cdecl,
    importcpp: "SetArrowsColor", header: "V3d_Trihedron.hxx".}
proc display*(this: var V3dTrihedron; theView: V3dView) {.cdecl, importcpp: "Display",
    header: "V3d_Trihedron.hxx".}
proc erase*(this: var V3dTrihedron) {.cdecl, importcpp: "Erase", header: "V3d_Trihedron.hxx".}
proc dumpJson*(this: V3dTrihedron; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "V3d_Trihedron.hxx".}



