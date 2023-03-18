import ../topods/topods_types
import xcafdimtolobjects_types
import ../standard/standard_types
import ../tdocstd/tdocstd_types


##  Created on: 2015-08-06
##  Created by: Ilya Novikov
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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



proc newXCAFDimTolObjectsTool*(theDoc: Handle[TDocStdDocument]): XCAFDimTolObjectsTool {.
    cdecl, constructor, importcpp: "XCAFDimTolObjects_Tool(@)",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc getDimensions*(this: XCAFDimTolObjectsTool; theDimensionObjectSequence: var XCAFDimTolObjectsDimensionObjectSequence) {.
    noSideEffect, cdecl, importcpp: "GetDimensions",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc getRefDimensions*(this: XCAFDimTolObjectsTool; theShape: TopoDS_Shape;
    theDimensions: var XCAFDimTolObjectsDimensionObjectSequence): bool {.
    noSideEffect, cdecl, importcpp: "GetRefDimensions",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc getGeomTolerances*(this: XCAFDimTolObjectsTool; theGeomToleranceObjectSequence: var XCAFDimTolObjectsGeomToleranceObjectSequence;
    theDatumObjectSequence: var XCAFDimTolObjectsDatumObjectSequence;
                       theMap: var XCAFDimTolObjectsDataMapOfToleranceDatum) {.
    noSideEffect, cdecl, importcpp: "GetGeomTolerances",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc getRefGeomTolerances*(this: XCAFDimTolObjectsTool; theShape: TopoDS_Shape;
    theGeomToleranceObjectSequence: var XCAFDimTolObjectsGeomToleranceObjectSequence;
    theDatumObjectSequence: var XCAFDimTolObjectsDatumObjectSequence;
                          theMap: var XCAFDimTolObjectsDataMapOfToleranceDatum): bool {.
    noSideEffect, cdecl, importcpp: "GetRefGeomTolerances",
    header: "XCAFDimTolObjects_Tool.hxx".}
proc getRefDatum*(this: XCAFDimTolObjectsTool; theShape: TopoDS_Shape;
                 theDatum: var Handle[XCAFDimTolObjectsDatumObject]): bool {.
    noSideEffect, cdecl, importcpp: "GetRefDatum",
    header: "XCAFDimTolObjects_Tool.hxx".}

