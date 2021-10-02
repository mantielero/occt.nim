##  Created on: 1993-07-28
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepToTopoDS_Root"
discard "forward decl of StepToTopoDS_TranslateShell"
discard "forward decl of StepToTopoDS_TranslateFace"
discard "forward decl of StepToTopoDS_TranslateEdgeLoop"
discard "forward decl of StepToTopoDS_TranslateEdge"
discard "forward decl of StepToTopoDS_TranslateVertex"
discard "forward decl of StepToTopoDS_TranslatePolyLoop"
discard "forward decl of StepToTopoDS_TranslateVertexLoop"
discard "forward decl of StepToTopoDS_TranslateCompositeCurve"
discard "forward decl of StepToTopoDS_TranslateCurveBoundedSurface"
discard "forward decl of StepToTopoDS_Builder"
discard "forward decl of StepToTopoDS_MakeTransformed"
discard "forward decl of StepToTopoDS_GeometricTool"
discard "forward decl of StepToTopoDS_Tool"
discard "forward decl of StepToTopoDS_CartesianPointHasher"
discard "forward decl of StepToTopoDS_PointPair"
discard "forward decl of StepToTopoDS_PointPairHasher"
discard "forward decl of StepToTopoDS_NMTool"
type
  StepToTopoDS* {.importcpp: "StepToTopoDS", header: "StepToTopoDS.hxx", bycopy.} = object


proc `new`*(this: var StepToTopoDS; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS::operator new", header: "StepToTopoDS.hxx".}
proc `delete`*(this: var StepToTopoDS; theAddress: pointer) {.
    importcpp: "StepToTopoDS::operator delete", header: "StepToTopoDS.hxx".}
proc `new[]`*(this: var StepToTopoDS; theSize: csize_t): pointer {.
    importcpp: "StepToTopoDS::operator new[]", header: "StepToTopoDS.hxx".}
proc `delete[]`*(this: var StepToTopoDS; theAddress: pointer) {.
    importcpp: "StepToTopoDS::operator delete[]", header: "StepToTopoDS.hxx".}
proc `new`*(this: var StepToTopoDS; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "StepToTopoDS::operator new", header: "StepToTopoDS.hxx".}
proc `delete`*(this: var StepToTopoDS; a2: pointer; a3: pointer) {.
    importcpp: "StepToTopoDS::operator delete", header: "StepToTopoDS.hxx".}
proc decodeBuilderError*(error: StepToTopoDS_BuilderError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeBuilderError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeShellError*(error: StepToTopoDS_TranslateShellError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeShellError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeFaceError*(error: StepToTopoDS_TranslateFaceError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeFaceError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeEdgeError*(error: StepToTopoDS_TranslateEdgeError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeEdgeError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeVertexError*(error: StepToTopoDS_TranslateVertexError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeVertexError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeVertexLoopError*(error: StepToTopoDS_TranslateVertexLoopError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodeVertexLoopError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodePolyLoopError*(error: StepToTopoDS_TranslatePolyLoopError): Handle[
    TCollectionHAsciiString] {.importcpp: "StepToTopoDS::DecodePolyLoopError(@)",
                              header: "StepToTopoDS.hxx".}
proc decodeGeometricToolError*(error: StepToTopoDS_GeometricToolError): StandardCString {.
    importcpp: "StepToTopoDS::DecodeGeometricToolError(@)",
    header: "StepToTopoDS.hxx".}