import xcafdoc_types

##  Created on: 2015-05-14
##  Created by: Ilya Novikov
##  Copyright (c) 2000-2015 OPEN CASCADE SAS
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

discard "forward decl of XCAFDoc_VisMaterial"
discard "forward decl of XCAFDoc_ShapeTool"

proc Expand*(theDoc: TDF_Label; theShape: TDF_Label; theRecursively: bool = true): bool {.
    cdecl, importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
proc Expand*(theDoc: TDF_Label; theRecursively: bool = true): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
proc Extract*(theSrcLabels: TDF_LabelSequence; theDstLabel: TDF_Label;
             theIsNoVisMat: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Extract(@)", header: "XCAFDoc_Editor.hxx".}
proc Extract*(theSrcLabel: TDF_Label; theDstLabel: TDF_Label;
             theIsNoVisMat: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Extract(@)", header: "XCAFDoc_Editor.hxx".}
proc CloneShapeLabel*(theSrcLabel: TDF_Label;
                     theSrcShapeTool: handle[XCAFDoc_ShapeTool];
                     theDstShapeTool: handle[XCAFDoc_ShapeTool];
                     theMap: var TDF_LabelDataMap): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_Editor::CloneShapeLabel(@)", header: "XCAFDoc_Editor.hxx".}
proc CloneMetaData*(theSrcLabel: TDF_Label; theDstLabel: TDF_Label; theVisMatMap: ptr NCollection_DataMap[
    handle[XCAFDoc_VisMaterial], handle[XCAFDoc_VisMaterial]];
                   theToCopyColor: bool = true; theToCopyLayer: bool = true;
                   theToCopyMaterial: bool = true;
                   theToCopyVisMaterial: bool = true;
                   theToCopyAttributes: bool = true) {.cdecl,
    importcpp: "XCAFDoc_Editor::CloneMetaData(@)", header: "XCAFDoc_Editor.hxx".}