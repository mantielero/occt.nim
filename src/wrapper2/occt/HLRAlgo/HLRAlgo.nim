##  Created on: 1992-02-18
##  Created by: Christophe MARION
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! In order to have the precision required in
## ! industrial design, drawings need to offer the
## ! possibility of removing lines, which are hidden
## ! in a given projection. To do this, the Hidden
## ! Line Removal component provides two
## ! algorithms: HLRBRep_Algo and HLRBRep_PolyAlgo.
## ! These algorithms remove or indicate lines
## ! hidden by surfaces. For a given projection, they
## ! calculate a set of lines characteristic of the
## ! object being represented. They are also used
## ! in conjunction with extraction utilities, which
## ! reconstruct a new, simplified shape from a
## ! selection of calculation results. This new shape
## ! is made up of edges, which represent the lines
## ! of the visualized shape in a plane. This plane is the projection plane.
## ! HLRBRep_Algo takes into account the shape
## ! itself. HLRBRep_PolyAlgo works with a
## ! polyhedral simplification of the shape. When
## ! you use HLRBRep_Algo, you obtain an exact
## ! result, whereas, when you use
## ! HLRBRep_PolyAlgo, you reduce computation
## ! time but obtain polygonal segments.

type
  HLRAlgo* {.importcpp: "HLRAlgo", header: "HLRAlgo.hxx", bycopy.} = object ## ! Iterator  on the  visible or  hidden  parts of  an
                                                                    ## ! EdgeStatus.


proc updateMinMax*(x: StandardReal; y: StandardReal; z: StandardReal;
                  min: array[16, StandardReal]; max: array[16, StandardReal]) {.
    importcpp: "HLRAlgo::UpdateMinMax(@)", header: "HLRAlgo.hxx".}
proc enlargeMinMax*(tol: StandardReal; min: array[16, StandardReal];
                   max: array[16, StandardReal]) {.
    importcpp: "HLRAlgo::EnlargeMinMax(@)", header: "HLRAlgo.hxx".}
proc initMinMax*(big: StandardReal; min: array[16, StandardReal];
                max: array[16, StandardReal]) {.
    importcpp: "HLRAlgo::InitMinMax(@)", header: "HLRAlgo.hxx".}
proc encodeMinMax*(min: var MinMaxIndices; max: var MinMaxIndices;
                  minMax: var MinMaxIndices) {.
    importcpp: "HLRAlgo::EncodeMinMax(@)", header: "HLRAlgo.hxx".}
proc sizeBox*(min: var MinMaxIndices; max: var MinMaxIndices): StandardReal {.
    importcpp: "HLRAlgo::SizeBox(@)", header: "HLRAlgo.hxx".}
proc decodeMinMax*(minMax: MinMaxIndices; min: var MinMaxIndices;
                  max: var MinMaxIndices) {.importcpp: "HLRAlgo::DecodeMinMax(@)",
    header: "HLRAlgo.hxx".}
proc copyMinMax*(iMin: var MinMaxIndices; iMax: var MinMaxIndices;
                oMin: var MinMaxIndices; oMax: var MinMaxIndices) {.
    importcpp: "HLRAlgo::CopyMinMax(@)", header: "HLRAlgo.hxx".}
proc addMinMax*(iMin: var MinMaxIndices; iMax: var MinMaxIndices;
               oMin: var MinMaxIndices; oMax: var MinMaxIndices) {.
    importcpp: "HLRAlgo::AddMinMax(@)", header: "HLRAlgo.hxx".}

