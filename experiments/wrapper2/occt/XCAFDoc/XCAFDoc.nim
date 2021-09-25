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


proc assemblyGUID*(): StandardGUID {.importcpp: "XCAFDoc::AssemblyGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc shapeRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::ShapeRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc colorRefGUID*(`type`: XCAFDocColorType): StandardGUID {.
    importcpp: "XCAFDoc::ColorRefGUID(@)", header: "XCAFDoc.hxx".}
proc dimTolRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::DimTolRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc dimensionRefFirstGUID*(): StandardGUID {.
    importcpp: "XCAFDoc::DimensionRefFirstGUID(@)", header: "XCAFDoc.hxx".}
proc dimensionRefSecondGUID*(): StandardGUID {.
    importcpp: "XCAFDoc::DimensionRefSecondGUID(@)", header: "XCAFDoc.hxx".}
proc geomToleranceRefGUID*(): StandardGUID {.
    importcpp: "XCAFDoc::GeomToleranceRefGUID(@)", header: "XCAFDoc.hxx".}
proc datumRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::DatumRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc datumTolRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::DatumTolRefGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc layerRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::LayerRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc materialRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::MaterialRefGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc visMaterialRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::VisMaterialRefGUID(@)",
                                        header: "XCAFDoc.hxx".}
proc noteRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::NoteRefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc invisibleGUID*(): StandardGUID {.importcpp: "XCAFDoc::InvisibleGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc colorByLayerGUID*(): StandardGUID {.importcpp: "XCAFDoc::ColorByLayerGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc externRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::ExternRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc sHUORefGUID*(): StandardGUID {.importcpp: "XCAFDoc::SHUORefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc viewRefGUID*(): StandardGUID {.importcpp: "XCAFDoc::ViewRefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc viewRefShapeGUID*(): StandardGUID {.importcpp: "XCAFDoc::ViewRefShapeGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc viewRefGDTGUID*(): StandardGUID {.importcpp: "XCAFDoc::ViewRefGDTGUID(@)",
                                    header: "XCAFDoc.hxx".}
proc viewRefPlaneGUID*(): StandardGUID {.importcpp: "XCAFDoc::ViewRefPlaneGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc viewRefNoteGUID*(): StandardGUID {.importcpp: "XCAFDoc::ViewRefNoteGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc viewRefAnnotationGUID*(): StandardGUID {.
    importcpp: "XCAFDoc::ViewRefAnnotationGUID(@)", header: "XCAFDoc.hxx".}
proc lockGUID*(): StandardGUID {.importcpp: "XCAFDoc::LockGUID(@)",
                              header: "XCAFDoc.hxx".}
