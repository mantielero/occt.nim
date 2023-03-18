import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



##  Created on: 2003-03-05
##  Created by: Sergey KUUL
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





proc newXCAFDocMaterialTool*(): XCAFDocMaterialTool {.cdecl, constructor,
    importcpp: "XCAFDoc_MaterialTool(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc set*(L: TDF_Label): Handle[XCAFDocMaterialTool] {.cdecl,
    importcpp: "XCAFDoc_MaterialTool::Set(@)", header: "XCAFDoc_MaterialTool.hxx".}
proc getID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc_MaterialTool::GetID(@)",
                           header: "XCAFDoc_MaterialTool.hxx".}
proc baseLabel*(this: XCAFDocMaterialTool): TDF_Label {.noSideEffect, cdecl,
    importcpp: "BaseLabel", header: "XCAFDoc_MaterialTool.hxx".}
proc shapeTool*(this: var XCAFDocMaterialTool): Handle[XCAFDocShapeTool] {.cdecl,
    importcpp: "ShapeTool", header: "XCAFDoc_MaterialTool.hxx".}
proc isMaterial*(this: XCAFDocMaterialTool; lab: TDF_Label): bool {.noSideEffect,
    cdecl, importcpp: "IsMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc getMaterialLabels*(this: XCAFDocMaterialTool; labels: var TDF_LabelSequence) {.
    noSideEffect, cdecl, importcpp: "GetMaterialLabels",
    header: "XCAFDoc_MaterialTool.hxx".}
proc addMaterial*(this: XCAFDocMaterialTool;
                 aName: Handle[TCollectionHAsciiString];
                 aDescription: Handle[TCollectionHAsciiString]; aDensity: cfloat;
                 aDensName: Handle[TCollectionHAsciiString];
                 aDensValType: Handle[TCollectionHAsciiString]): TDF_Label {.
    noSideEffect, cdecl, importcpp: "AddMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc setMaterial*(this: XCAFDocMaterialTool; L: TDF_Label; matL: TDF_Label) {.
    noSideEffect, cdecl, importcpp: "SetMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc setMaterial*(this: XCAFDocMaterialTool; L: TDF_Label;
                 aName: Handle[TCollectionHAsciiString];
                 aDescription: Handle[TCollectionHAsciiString]; aDensity: cfloat;
                 aDensName: Handle[TCollectionHAsciiString];
                 aDensValType: Handle[TCollectionHAsciiString]) {.noSideEffect,
    cdecl, importcpp: "SetMaterial", header: "XCAFDoc_MaterialTool.hxx".}
proc getMaterial*(this: XCAFDocMaterialTool; matL: TDF_Label;
                 aName: var Handle[TCollectionHAsciiString];
                 aDescription: var Handle[TCollectionHAsciiString];
                 aDensity: var cfloat;
                 aDensName: var Handle[TCollectionHAsciiString];
                 aDensValType: var Handle[TCollectionHAsciiString]): bool {.
    noSideEffect, cdecl, importcpp: "GetMaterial",
    header: "XCAFDoc_MaterialTool.hxx".}
proc getDensityForShape*(shapeL: TDF_Label): cfloat {.cdecl,
    importcpp: "XCAFDoc_MaterialTool::GetDensityForShape(@)",
    header: "XCAFDoc_MaterialTool.hxx".}
proc id*(this: XCAFDocMaterialTool): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "XCAFDoc_MaterialTool.hxx".}
proc dumpJson*(this: XCAFDocMaterialTool; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "XCAFDoc_MaterialTool.hxx".}

