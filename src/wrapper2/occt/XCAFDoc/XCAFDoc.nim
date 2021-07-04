##  Created on: 2000-08-08
##  Created by: data exchange team
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
  ../Standard/Standard_Handle, XCAFDoc_ColorType

discard "forward decl of Standard_GUID"
discard "forward decl of XCAFDoc_DocumentTool"
discard "forward decl of XCAFDoc_Location"
discard "forward decl of XCAFDoc_Color"
discard "forward decl of XCAFDoc_DimTol"
discard "forward decl of XCAFDoc_Dimension"
discard "forward decl of XCAFDoc_GeomTolerance"
discard "forward decl of XCAFDoc_Datum"
discard "forward decl of XCAFDoc_Material"
discard "forward decl of XCAFDoc_Volume"
discard "forward decl of XCAFDoc_Area"
discard "forward decl of XCAFDoc_Centroid"
discard "forward decl of XCAFDoc_ClippingPlaneTool"
discard "forward decl of XCAFDoc_ShapeTool"
discard "forward decl of XCAFDoc_ShapeMapTool"
discard "forward decl of XCAFDoc_ColorTool"
discard "forward decl of XCAFDoc_DimTolTool"
discard "forward decl of XCAFDoc_LayerTool"
discard "forward decl of XCAFDoc_MaterialTool"
discard "forward decl of XCAFDoc_GraphNode"
discard "forward decl of XCAFDoc_Editor"
discard "forward decl of XCAFDoc_ViewTool"
type
  XCAFDoc* {.importcpp: "XCAFDoc", header: "XCAFDoc.hxx", bycopy.} = object ## ! class for containing GraphNodes.
                                                                    ## ! Returns GUID for UAttribute identifying assembly


proc AssemblyGUID*(): Standard_GUID {.importcpp: "XCAFDoc::AssemblyGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc ShapeRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ShapeRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc ColorRefGUID*(`type`: XCAFDoc_ColorType): Standard_GUID {.
    importcpp: "XCAFDoc::ColorRefGUID(@)", header: "XCAFDoc.hxx".}
proc DimTolRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::DimTolRefGUID(@)",
                                    header: "XCAFDoc.hxx".}
proc DimensionRefFirstGUID*(): Standard_GUID {.
    importcpp: "XCAFDoc::DimensionRefFirstGUID(@)", header: "XCAFDoc.hxx".}
proc DimensionRefSecondGUID*(): Standard_GUID {.
    importcpp: "XCAFDoc::DimensionRefSecondGUID(@)", header: "XCAFDoc.hxx".}
proc GeomToleranceRefGUID*(): Standard_GUID {.
    importcpp: "XCAFDoc::GeomToleranceRefGUID(@)", header: "XCAFDoc.hxx".}
proc DatumRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::DatumRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc DatumTolRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::DatumTolRefGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc LayerRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::LayerRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc MaterialRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::MaterialRefGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc VisMaterialRefGUID*(): Standard_GUID {.
    importcpp: "XCAFDoc::VisMaterialRefGUID(@)", header: "XCAFDoc.hxx".}
proc NoteRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::NoteRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc InvisibleGUID*(): Standard_GUID {.importcpp: "XCAFDoc::InvisibleGUID(@)",
                                    header: "XCAFDoc.hxx".}
proc ColorByLayerGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ColorByLayerGUID(@)",
                                       header: "XCAFDoc.hxx".}
proc ExternRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ExternRefGUID(@)",
                                    header: "XCAFDoc.hxx".}
proc SHUORefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::SHUORefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc ViewRefGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ViewRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc ViewRefShapeGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ViewRefShapeGUID(@)",
                                       header: "XCAFDoc.hxx".}
proc ViewRefGDTGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ViewRefGDTGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc ViewRefPlaneGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ViewRefPlaneGUID(@)",
                                       header: "XCAFDoc.hxx".}
proc ViewRefNoteGUID*(): Standard_GUID {.importcpp: "XCAFDoc::ViewRefNoteGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc ViewRefAnnotationGUID*(): Standard_GUID {.
    importcpp: "XCAFDoc::ViewRefAnnotationGUID(@)", header: "XCAFDoc.hxx".}
proc LockGUID*(): Standard_GUID {.importcpp: "XCAFDoc::LockGUID(@)",
                               header: "XCAFDoc.hxx".}