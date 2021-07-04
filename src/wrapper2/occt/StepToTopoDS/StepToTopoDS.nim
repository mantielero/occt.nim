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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepToTopoDS_BuilderError,
  StepToTopoDS_TranslateShellError, StepToTopoDS_TranslateFaceError,
  StepToTopoDS_TranslateEdgeError, StepToTopoDS_TranslateVertexError,
  StepToTopoDS_TranslateVertexLoopError, StepToTopoDS_TranslatePolyLoopError,
  ../Standard/Standard_CString, StepToTopoDS_GeometricToolError

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


proc DecodeBuilderError*(Error: StepToTopoDS_BuilderError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeBuilderError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeShellError*(Error: StepToTopoDS_TranslateShellError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeShellError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeFaceError*(Error: StepToTopoDS_TranslateFaceError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeFaceError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeEdgeError*(Error: StepToTopoDS_TranslateEdgeError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeEdgeError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeVertexError*(Error: StepToTopoDS_TranslateVertexError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeVertexError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeVertexLoopError*(Error: StepToTopoDS_TranslateVertexLoopError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodeVertexLoopError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodePolyLoopError*(Error: StepToTopoDS_TranslatePolyLoopError): handle[
    TCollection_HAsciiString] {.importcpp: "StepToTopoDS::DecodePolyLoopError(@)",
                               header: "StepToTopoDS.hxx".}
proc DecodeGeometricToolError*(Error: StepToTopoDS_GeometricToolError): Standard_CString {.
    importcpp: "StepToTopoDS::DecodeGeometricToolError(@)",
    header: "StepToTopoDS.hxx".}