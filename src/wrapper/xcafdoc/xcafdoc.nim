import ../tdf/tdf_types
import xcafdoc_types
import ../standard/standard_types
import ../tcollection/tcollection_types



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



proc assemblyGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::AssemblyGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc shapeRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ShapeRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc colorRefGUID*(`type`: XCAFDocColorType): StandardGUID {.cdecl,
    importcpp: "XCAFDoc::ColorRefGUID(@)", header: "XCAFDoc.hxx".}
proc dimTolRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::DimTolRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc dimensionRefFirstGUID*(): StandardGUID {.cdecl,
    importcpp: "XCAFDoc::DimensionRefFirstGUID(@)", header: "XCAFDoc.hxx".}
proc dimensionRefSecondGUID*(): StandardGUID {.cdecl,
    importcpp: "XCAFDoc::DimensionRefSecondGUID(@)", header: "XCAFDoc.hxx".}
proc geomToleranceRefGUID*(): StandardGUID {.cdecl,
    importcpp: "XCAFDoc::GeomToleranceRefGUID(@)", header: "XCAFDoc.hxx".}
proc datumRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::DatumRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc datumTolRefGUID*(): StandardGUID {.cdecl,
                                     importcpp: "XCAFDoc::DatumTolRefGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc layerRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::LayerRefGUID(@)",
                                  header: "XCAFDoc.hxx".}
proc materialRefGUID*(): StandardGUID {.cdecl,
                                     importcpp: "XCAFDoc::MaterialRefGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc visMaterialRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::VisMaterialRefGUID(@)",
                                        header: "XCAFDoc.hxx".}
proc noteRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::NoteRefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc invisibleGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::InvisibleGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc colorByLayerGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ColorByLayerGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc externRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ExternRefGUID(@)",
                                   header: "XCAFDoc.hxx".}
proc sHUORefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::SHUORefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc viewRefGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ViewRefGUID(@)",
                                 header: "XCAFDoc.hxx".}
proc viewRefShapeGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ViewRefShapeGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc viewRefGDTGUID*(): StandardGUID {.cdecl,
                                    importcpp: "XCAFDoc::ViewRefGDTGUID(@)",
                                    header: "XCAFDoc.hxx".}
proc viewRefPlaneGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::ViewRefPlaneGUID(@)",
                                      header: "XCAFDoc.hxx".}
proc viewRefNoteGUID*(): StandardGUID {.cdecl,
                                     importcpp: "XCAFDoc::ViewRefNoteGUID(@)",
                                     header: "XCAFDoc.hxx".}
proc viewRefAnnotationGUID*(): StandardGUID {.cdecl,
    importcpp: "XCAFDoc::ViewRefAnnotationGUID(@)", header: "XCAFDoc.hxx".}
proc lockGUID*(): StandardGUID {.cdecl, importcpp: "XCAFDoc::LockGUID(@)",
                              header: "XCAFDoc.hxx".}
proc attributeInfo*(theAtt: Handle[TDF_Attribute]): TCollectionAsciiString {.cdecl,
    importcpp: "XCAFDoc::AttributeInfo(@)", header: "XCAFDoc.hxx".}

