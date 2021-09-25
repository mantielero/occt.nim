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
proc resetToDefaults*(this: var VrmlAPI_Writer) {.importcpp: "ResetToDefaults",
    header: "VrmlAPI_Writer.hxx".}
proc drawer*(this: VrmlAPI_Writer): Handle[VrmlConverterDrawer] {.noSideEffect,
    importcpp: "Drawer", header: "VrmlAPI_Writer.hxx".}
proc setDeflection*(this: var VrmlAPI_Writer; aDef: float) {.
    importcpp: "SetDeflection", header: "VrmlAPI_Writer.hxx".}
proc setRepresentation*(this: var VrmlAPI_Writer;
                       aRep: VrmlAPI_RepresentationOfShape) {.
    importcpp: "SetRepresentation", header: "VrmlAPI_Writer.hxx".}
proc setTransparencyToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var Handle[VrmlMaterial];
                               aTransparency: float) {.
    importcpp: "SetTransparencyToMaterial", header: "VrmlAPI_Writer.hxx".}
proc setShininessToMaterial*(this: var VrmlAPI_Writer;
                            aMaterial: var Handle[VrmlMaterial]; aShininess: float) {.
    importcpp: "SetShininessToMaterial", header: "VrmlAPI_Writer.hxx".}
proc setAmbientColorToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var Handle[VrmlMaterial];
                               color: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetAmbientColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc setDiffuseColorToMaterial*(this: var VrmlAPI_Writer;
                               aMaterial: var Handle[VrmlMaterial];
                               color: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetDiffuseColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc setSpecularColorToMaterial*(this: var VrmlAPI_Writer;
                                aMaterial: var Handle[VrmlMaterial];
                                color: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetSpecularColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc setEmissiveColorToMaterial*(this: var VrmlAPI_Writer;
                                aMaterial: var Handle[VrmlMaterial];
                                color: Handle[QuantityHArray1OfColor]) {.
    importcpp: "SetEmissiveColorToMaterial", header: "VrmlAPI_Writer.hxx".}
proc getRepresentation*(this: VrmlAPI_Writer): VrmlAPI_RepresentationOfShape {.
    noSideEffect, importcpp: "GetRepresentation", header: "VrmlAPI_Writer.hxx".}
proc getFrontMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetFrontMaterial", header: "VrmlAPI_Writer.hxx".}
proc getPointsMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetPointsMaterial", header: "VrmlAPI_Writer.hxx".}
proc getUisoMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetUisoMaterial", header: "VrmlAPI_Writer.hxx".}
proc getVisoMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetVisoMaterial", header: "VrmlAPI_Writer.hxx".}
proc getLineMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetLineMaterial", header: "VrmlAPI_Writer.hxx".}
proc getWireMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.noSideEffect,
    importcpp: "GetWireMaterial", header: "VrmlAPI_Writer.hxx".}
proc getFreeBoundsMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.
    noSideEffect, importcpp: "GetFreeBoundsMaterial", header: "VrmlAPI_Writer.hxx".}
proc getUnfreeBoundsMaterial*(this: VrmlAPI_Writer): Handle[VrmlMaterial] {.
    noSideEffect, importcpp: "GetUnfreeBoundsMaterial",
    header: "VrmlAPI_Writer.hxx".}
proc write*(this: VrmlAPI_Writer; aShape: TopoDS_Shape; aFile: StandardCString;
           aVersion: int = 2): bool {.noSideEffect, importcpp: "Write",
                                 header: "VrmlAPI_Writer.hxx".}
proc writeDoc*(this: VrmlAPI_Writer; theDoc: Handle[TDocStdDocument];
              theFile: StandardCString; theScale: float): bool {.noSideEffect,
    importcpp: "WriteDoc", header: "VrmlAPI_Writer.hxx".}
