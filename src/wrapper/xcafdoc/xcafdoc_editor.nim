import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../ncollection/ncollection_types



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



proc expand*(theDoc: TDF_Label; theShape: TDF_Label; theRecursively: bool = true): bool {.
    cdecl, importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
proc expand*(theDoc: TDF_Label; theRecursively: bool = true): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Expand(@)", header: "XCAFDoc_Editor.hxx".}
proc extract*(theSrcLabels: TDF_LabelSequence; theDstLabel: TDF_Label;
             theIsNoVisMat: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Extract(@)", header: "XCAFDoc_Editor.hxx".}
proc extract*(theSrcLabel: TDF_Label; theDstLabel: TDF_Label;
             theIsNoVisMat: bool = false): bool {.cdecl,
    importcpp: "XCAFDoc_Editor::Extract(@)", header: "XCAFDoc_Editor.hxx".}
proc cloneShapeLabel*(theSrcLabel: TDF_Label;
                     theSrcShapeTool: Handle[XCAFDocShapeTool];
                     theDstShapeTool: Handle[XCAFDocShapeTool];
                     theMap: var TDF_LabelDataMap): TDF_Label {.cdecl,
    importcpp: "XCAFDoc_Editor::CloneShapeLabel(@)", header: "XCAFDoc_Editor.hxx".}


# proc cloneMetaData*(theSrcLabel: TDF_Label; theDstLabel: TDF_Label; theVisMatMap: ptr NCollectionDataMap[
#     Handle[XCAFDocVisMaterial], Handle[XCAFDocVisMaterial]];
#                    theToCopyColor: bool = true; theToCopyLayer: bool = true;
#                    theToCopyMaterial: bool = true;
#                    theToCopyVisMaterial: bool = true;
#                    theToCopyAttributes: bool = true) {.cdecl,
#     importcpp: "XCAFDoc_Editor::CloneMetaData(@)", header: "XCAFDoc_Editor.hxx".}

