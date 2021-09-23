##  Created on: 1994-11-25
##  Created by: Frederic MAUPAS
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, TopoDSToStep_BuilderError,
  TopoDSToStep_MakeFaceError, TopoDSToStep_MakeWireError,
  TopoDSToStep_MakeEdgeError, TopoDSToStep_MakeVertexError

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Standard_Transient"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of TopoDSToStep_Root"
discard "forward decl of TopoDSToStep_MakeManifoldSolidBrep"
discard "forward decl of TopoDSToStep_MakeBrepWithVoids"
discard "forward decl of TopoDSToStep_MakeFacetedBrep"
discard "forward decl of TopoDSToStep_MakeFacetedBrepAndBrepWithVoids"
discard "forward decl of TopoDSToStep_MakeShellBasedSurfaceModel"
discard "forward decl of TopoDSToStep_MakeGeometricCurveSet"
discard "forward decl of TopoDSToStep_Builder"
discard "forward decl of TopoDSToStep_WireframeBuilder"
discard "forward decl of TopoDSToStep_Tool"
discard "forward decl of TopoDSToStep_FacetedTool"
discard "forward decl of TopoDSToStep_MakeStepFace"
discard "forward decl of TopoDSToStep_MakeStepWire"
discard "forward decl of TopoDSToStep_MakeStepEdge"
discard "forward decl of TopoDSToStep_MakeStepVertex"
type
  TopoDSToStep* {.importcpp: "TopoDSToStep", header: "TopoDSToStep.hxx", bycopy.} = object


proc DecodeBuilderError*(E: TopoDSToStep_BuilderError): handle[
    TCollection_HAsciiString] {.importcpp: "TopoDSToStep::DecodeBuilderError(@)",
                               header: "TopoDSToStep.hxx".}
proc DecodeFaceError*(E: TopoDSToStep_MakeFaceError): handle[
    TCollection_HAsciiString] {.importcpp: "TopoDSToStep::DecodeFaceError(@)",
                               header: "TopoDSToStep.hxx".}
proc DecodeWireError*(E: TopoDSToStep_MakeWireError): handle[
    TCollection_HAsciiString] {.importcpp: "TopoDSToStep::DecodeWireError(@)",
                               header: "TopoDSToStep.hxx".}
proc DecodeEdgeError*(E: TopoDSToStep_MakeEdgeError): handle[
    TCollection_HAsciiString] {.importcpp: "TopoDSToStep::DecodeEdgeError(@)",
                               header: "TopoDSToStep.hxx".}
proc DecodeVertexError*(E: TopoDSToStep_MakeVertexError): handle[
    TCollection_HAsciiString] {.importcpp: "TopoDSToStep::DecodeVertexError(@)",
                               header: "TopoDSToStep.hxx".}
proc AddResult*(FP: handle[Transfer_FinderProcess]; Shape: TopoDS_Shape;
               entity: handle[Standard_Transient]) {.
    importcpp: "TopoDSToStep::AddResult(@)", header: "TopoDSToStep.hxx".}
proc AddResult*(FP: handle[Transfer_FinderProcess]; Tool: TopoDSToStep_Tool) {.
    importcpp: "TopoDSToStep::AddResult(@)", header: "TopoDSToStep.hxx".}