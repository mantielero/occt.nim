##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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

## ! Definition of all available hatch styles.

type
  AspectHatchStyle* {.size: sizeof(cint), importcpp: "Aspect_HatchStyle",
                     header: "Aspect_HatchStyle.hxx".} = enum
    AspectHS_SOLID = 0,         ##  TEL_HS_SOLID (no hatching)
    AspectHS_GRID_DIAGONAL = 1, ##  TEL_HS_CROSS
    AspectHS_GRID_DIAGONAL_WIDE = 2, ##  TEL_HS_CROSS_SPARSE
    AspectHS_GRID = 3,          ##  TEL_HS_GRID
    AspectHS_GRID_WIDE = 4,     ##  TEL_HS_GRID_SPARSE
    AspectHS_DIAGONAL_45 = 5,   ##  TEL_HS_DIAG_45
    AspectHS_DIAGONAL_135 = 6,  ##  TEL_HS_DIAG_135
    AspectHS_HORIZONTAL = 7,    ##  TEL_HS_HORIZONTAL
    AspectHS_VERTICAL = 8,      ##  TEL_HS_VERTICAL
    AspectHS_DIAGONAL_45WIDE = 9, ##  TEL_HS_DIAG_45_SPARSE
    AspectHS_DIAGONAL_135WIDE = 10, ##  TEL_HS_DIAG_135_SPARSE
    AspectHS_HORIZONTAL_WIDE = 11, ##  TEL_HS_HORIZONTAL_SPARSE
    AspectHS_VERTICAL_WIDE = 12, ##  TEL_HS_VERTICAL_SPARSE
    AspectHS_NB = 13

