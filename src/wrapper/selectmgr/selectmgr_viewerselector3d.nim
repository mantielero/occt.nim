import ../tcolgp/tcolgp_types
import ../gp/gp_types
import ../standard/standard_types
import ../v3d/v3d_types
import selectmgr_types





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



proc newSelectMgrViewerSelector3d*(): SelectMgrViewerSelector3d {.cdecl,
    constructor, importcpp: "SelectMgr_ViewerSelector3d(@)", header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; theXPix: cint; theYPix: cint;
          theView: Handle[V3dView]) {.cdecl, importcpp: "Pick", header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; theXPMin: cint; theYPMin: cint;
          theXPMax: cint; theYPMax: cint; theView: Handle[V3dView]) {.cdecl,
    importcpp: "Pick", header: "SelectMgr_ViewerSelector3d.hxx".}
proc pick*(this: var SelectMgrViewerSelector3d; thePolyline: TColgpArray1OfPnt2d;
          theView: Handle[V3dView]) {.cdecl, importcpp: "Pick", header: "SelectMgr_ViewerSelector3d.hxx".}
proc toPixMap*(this: var SelectMgrViewerSelector3d; theImage: var ImagePixMap;
              theView: Handle[V3dView]; theType: StdSelectTypeOfSelectionImage;
              thePickedIndex: cint = 1): bool {.cdecl, importcpp: "ToPixMap",
    header: "SelectMgr_ViewerSelector3d.hxx".}
proc displaySensitive*(this: var SelectMgrViewerSelector3d; theView: Handle[V3dView]) {.
    cdecl, importcpp: "DisplaySensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc clearSensitive*(this: var SelectMgrViewerSelector3d; theView: Handle[V3dView]) {.
    cdecl, importcpp: "ClearSensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc displaySensitive*(this: var SelectMgrViewerSelector3d;
                      theSel: Handle[SelectMgrSelection]; theTrsf: gp_Trsf;
                      theView: Handle[V3dView]; theToClearOthers: bool = true) {.
    cdecl, importcpp: "DisplaySensitive", header: "SelectMgr_ViewerSelector3d.hxx".}
proc dumpJson*(this: SelectMgrViewerSelector3d; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "SelectMgr_ViewerSelector3d.hxx".}



