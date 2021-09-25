##  Created on: 1995-03-15
##  Created by: Robert COUBLANC
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_TransformPers"
discard "forward decl of V3d_View"
type
  SelectMgrViewerSelector3d* {.importcpp: "SelectMgr_ViewerSelector3d",
                              header: "SelectMgr_ViewerSelector3d.hxx", bycopy.} = object of SelectMgrViewerSelector ##
                                                                                                              ## !
                                                                                                              ## Constructs
                                                                                                              ## an
                                                                                                              ## empty
                                                                                                              ## 3D
                                                                                                              ## selector
                                                                                                              ## object.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Displays
                                                                                                              ## sensitives
                                                                                                              ## in
                                                                                                              ## view
                                                                                                              ## <theView>.
                                                                                                              ##
                                                                                                              ## !
                                                                                                              ## Update
                                                                                                              ## z-layers
                                                                                                              ## order
                                                                                                              ## map.
    ## !< list of debug presentations

  SelectMgrViewerSelector3dbaseType* = SelectMgrViewerSelector

proc getTypeName*(): cstring {.importcpp: "SelectMgr_ViewerSelector3d::get_type_name(@)",
                            header: "SelectMgr_ViewerSelector3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "SelectMgr_ViewerSelector3d::get_type_descriptor(@)",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc dynamicType*(this: SelectMgrViewerSelector3d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc constructSelectMgrViewerSelector3d*(): SelectMgrViewerSelector3d {.
    constructor, importcpp: "SelectMgr_ViewerSelector3d(@)",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; theXPix: int; theYPix: int;
          theView: Handle[V3dView]) {.importcpp: "Pick",
                                    header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; theXPMin: int; theYPMin: int;
          theXPMax: int; theYPMax: int; theView: Handle[V3dView]) {.importcpp: "Pick",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; thePolyline: TColgpArray1OfPnt2d;
          theView: Handle[V3dView]) {.importcpp: "Pick",
                                    header: "SelectMgr_ViewerSelector3d.hxx".}
proc toPixMap*(this: var SelectMgrViewerSelector3d; theImage: var ImagePixMap;
              theView: Handle[V3dView]; theType: StdSelectTypeOfSelectionImage;
              thePickedIndex: int = 1): bool {.importcpp: "ToPixMap",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc displaySensitive*(this: var SelectMgrViewerSelector3d; theView: Handle[V3dView]) {.
    importcpp: "DisplaySensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc clearSensitive*(this: var SelectMgrViewerSelector3d; theView: Handle[V3dView]) {.
    importcpp: "ClearSensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc displaySensitive*(this: var SelectMgrViewerSelector3d;
                      theSel: Handle[SelectMgrSelection]; theTrsf: Trsf;
                      theView: Handle[V3dView]; theToClearOthers: bool = true) {.
    importcpp: "DisplaySensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc dumpJson*(this: SelectMgrViewerSelector3d; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "SelectMgr_ViewerSelector3d.hxx".}
discard "forward decl of SelectMgr_ViewerSelector3d"
type
  HandleSelectMgrViewerSelector3d* = Handle[SelectMgrViewerSelector3d]

