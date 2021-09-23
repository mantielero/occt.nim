##  Created on: 2000-06-20
##  Created by: Sergey MOZOKHIN
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, VrmlAPI_RepresentationOfShape,
  ../Standard/Standard_Real, ../Quantity/Quantity_HArray1OfColor,
  ../Standard/Standard_CString, ../Standard/Standard_Integer,
  ../TDocStd/TDocStd_Document

discard "forward decl of VrmlConverter_Drawer"
discard "forward decl of VrmlConverter_Projector"
discard "forward decl of Vrml_Material"
discard "forward decl of TopoDS_Shape"
type
  VrmlAPI_Writer* {.importcpp: "VrmlAPI_Writer", header: "VrmlAPI_Writer.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## a
                                                                                         ## writer
                                                                                         ## object
                                                                                         ## with
                                                                                         ## default
                                                                                         ## parameters.
                                                                                         ##
                                                                                         ## !
                                                                                         ## Converts
                                                                                         ## the
                                                                                         ## shape
                                                                                         ## aShape
                                                                                         ## to
                                                                                         ## VRML
                                                                                         ## format
                                                                                         ## of
                                                                                         ## version
                                                                                         ## 1.0
                                                                                         ## and
                                                                                         ## writes
                                                                                         ## it
                                                                                         ##
                                                                                         ## !
                                                                                         ## to
                                                                                         ## the
                                                                                         ## file
                                                                                         ## identified
                                                                                         ## by
                                                                                         ## aFileName
                                                                                         ## using
                                                                                         ## default
                                                                                         ## parameters.


proc constructVrmlAPI_Writer*(): VrmlAPI_Writer {.constructor,
    importcpp: "VrmlAPI_Writer(@)", header: "VrmlAPI_Writer.hxx".}
proc ResetToDefaults*(this: var VrmlAPI_Writer) {.importcpp: "ResetToDefaults",
    header: "VrmlAPI_Writer.hxx".}
proc Drawer*(this: VrmlAPI_Writer): handle[VrmlConverter_Drawer] {.noSideEffect,
    importcpp: "Drawer", header: "VrmlAPI_Writer.hxx".}
proc SetDeflection*(this: var VrmlAPI_Writer; aDef: Standard_Real) {.
    importcpp: "SetDeflection", header: "VrmlAPI_Writer.hxx".}
proc SetRepresentation*(this: var VrmlAPI_Writer;
                       aRep: VrmlAPI_RepresentationOfShape) {.
    importcpp: "SetRepresentation", header: "VrmlAPI_Writer.hxx".}
proc SetTransparencyToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var handle[Vrml_Material];
                               aTransparency: Standard_Real) {.
    importcpp: "SetTransparencyToMaterial", header: "VrmlAPI_Writer.hxx".}
proc SetShininessToMaterial*(this: var VrmlAPI_Writer;
                            aMaterial: var handle[Vrml_Material];
                            aShininess: Standard_Real) {.
    importcpp: "SetShininessToMaterial", header: "VrmlAPI_Writer.hxx".}
proc SetAmbientColorToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var handle[Vrml_Material];
                               Color: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetAmbientColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc SetDiffuseColorToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var handle[Vrml_Material];
                               Color: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetDiffuseColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc SetSpecularColorToMaterial*(this: var VrmlAPI_Writer;
                                aMaterial: var handle[Vrml_Material];
                                Color: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetSpecularColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc SetEmissiveColorToMaterial*(this: var VrmlAPI_Writer;
                                aMaterial: var handle[Vrml_Material];
                                Color: handle[Quantity_HArray1OfColor]) {.
    importcpp: "SetEmissiveColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetRepresentation*(this: VrmlAPI_Writer): VrmlAPI_RepresentationOfShape {.
    noSideEffect, importcpp: "GetRepresentation", header: "VrmlAPI_Writer.hxx".}
proc GetFrontMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetFrontMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetPointsMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetPointsMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetUisoMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetUisoMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetVisoMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetVisoMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetLineMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetLineMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetWireMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.noSideEffect,
    importcpp: "GetWireMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetFreeBoundsMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.
    noSideEffect, importcpp: "GetFreeBoundsMaterial", header: "VrmlAPI_Writer.hxx".}
proc GetUnfreeBoundsMaterial*(this: VrmlAPI_Writer): handle[Vrml_Material] {.
    noSideEffect, importcpp: "GetUnfreeBoundsMaterial",
    header: "VrmlAPI_Writer.hxx".}
proc Write*(this: VrmlAPI_Writer; aShape: TopoDS_Shape; aFile: Standard_CString;
           aVersion: Standard_Integer = 2): Standard_Boolean {.noSideEffect,
    importcpp: "Write", header: "VrmlAPI_Writer.hxx".}
proc WriteDoc*(this: VrmlAPI_Writer; theDoc: handle[TDocStd_Document];
              theFile: Standard_CString; theScale: Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "WriteDoc", header: "VrmlAPI_Writer.hxx".}