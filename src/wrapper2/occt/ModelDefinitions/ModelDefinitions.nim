##  Created on: 2009-04-30
##  Created by: Sergey ZARITCHNY <sergey.zaritchny@opencascade.com>
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

const
  GEOMOBJECT_GUID* = Standard_GUID("6c6915ab-775f-4475-859e-befd74d26a23")
  ATTCH_GUID* = Standard_GUID("12e94554-6dbc-11d4-b9c8-0060b0ee281b")
  XTTCH_GUID* = Standard_GUID("12e94555-6dbc-11d4-b9c8-0060b0ee281b")
  PTXYZ_GUID* = Standard_GUID("12e94556-6dbc-11d4-b9c8-0060b0ee281b")
  PTALINE_GUID* = Standard_GUID("12e94557-6dbc-11d4-b9c8-0060b0ee281b")
  PRRLINE_GUID* = Standard_GUID("12e94558-6dbc-11d4-b9c8-0060b0ee281b")
  PMIRR_GUID* = Standard_GUID("12e94559-6dbc-11d4-b9c8-0060b0ee281b")
  BOX_GUID* = Standard_GUID("12e94543-6dbc-11d4-b9c8-0060b0ee281b")
  SPH_GUID* = Standard_GUID("12e94544-6dbc-11d4-b9c8-0060b0ee281b")
  CYL_GUID* = Standard_GUID("12e94545-6dbc-11d4-b9c8-0060b0ee281b")
  CONE_GUID* = Standard_GUID("12e94546-6dbc-11d4-b9c8-0060b0ee281b")
  TORUS_GUID* = Standard_GUID("12e94547-6dbc-11d4-b9c8-0060b0ee281b")
  CUT_GUID* = Standard_GUID("12e94548-6dbc-11d4-b9c8-0060b0ee281b")
  FUSE_GUID* = Standard_GUID("12e94549-6dbc-11d4-b9c8-0060b0ee281b")
  COMMON_GUID* = Standard_GUID("12e9454a-6dbc-11d4-b9c8-0060b0ee281b")
  SECTION_GUID* = Standard_GUID("12e9454b-6dbc-11d4-b9c8-0060b0ee281b")
  PRISM_GUID* = Standard_GUID("12e94550-6dbc-11d4-b9c8-0060b0ee281b")
  FULREVOL_GUID* = Standard_GUID("12e94551-6dbc-11d4-b9c8-0060b0ee281b")
  SECREVOL_GUID* = Standard_GUID("12e94552-6dbc-11d4-b9c8-0060b0ee281b")
  FILLT_GUID* = Standard_GUID("12e94553-6dbc-11d4-b9c8-0060b0ee281b")
  CHAMF_GUID* = Standard_GUID("12e9455a-6dbc-11d4-b9c8-0060b0ee281b")
  OFFSET_GUID* = Standard_GUID("12e9455b-6dbc-11d4-b9c8-0060b0ee281b")
  PNTXYZ_GUID* = Standard_GUID("12e9455c-6dbc-11d4-b9c8-0060b0ee281b")
  PNTRLT_GUID* = Standard_GUID("12e9455d-6dbc-11d4-b9c8-0060b0ee281b")
  LINE3D_GUID* = Standard_GUID("12e9455e-6dbc-11d4-b9c8-0060b0ee281b")
  WIRE_GUID* = Standard_GUID("12e9455f-6dbc-11d4-b9c8-0060b0ee281b")

## Function structure definitions

const
  FUNCTION_ARGUMENTS_LABEL* = 1
  FUNCTION_RESULT_LABEL* = 2

template POSITION*(Function, theA: untyped): untyped =
  Function.Label().FindChild(FUNCTION_ARGUMENTS_LABEL).FindChild(theA)

template RESPOSITION*(Function: untyped): untyped =
  Function.Label().FindChild(FUNCTION_RESULT_LABEL)

const
  BOX_DX* = 1
  BOX_DY* = 2
  BOX_DZ* = 3
  CYL_RADIUS* = 1
  CYL_HEIGHT* = 2
  CYL_AXIS* = 3
  ATTACH_ARG* = 1
  BOOL_TOOL* = 1
  SECT_OBJECT* = 1
  SECT_TOOL* = 2
  FILLET_RADIUS* = 1
  FILLET_SURFTYPE* = 2
  FILLET_PATH* = 3
  PTRANSF_DX* = 1
  PTRANSF_DY* = 2
  PTRANSF_DZ* = 3
  PTRANSF_OFF* = 1
  PTRANSF_ANG* = 1
  PTRANSF_LINE* = 2
  PTRANSF_PLANE* = 1
  PRISM_BASIS* = 1
  PRISM_HEIGHT* = 2
  PRISM_DIR* = 3
  REVOL_BASIS* = 1
  REVOL_AXIS* = 2
  REVOL_ANGLE* = 3
  REVOL_REV* = 4
  SPHERE_CENTER* = 1
  SPHERE_RADIUS* = 2
  PNT_DX* = 1
  PNT_DY* = 2
  PNT_DZ* = 3
  PNTRLT_REF* = 4
  LINE3D_TYPE* = 1
  LINE3D_PNTNB* = 2
  DONE* = 0
  NOTDONE* = 9999
  ALGO_FAILED* = 11
  RESULT_NOT_VALID* = 12
  WRONG_AXIS* = 13
  WRONG_ARGUMENT* = 14
  UNSUPPORTED_FUNCTION* = 15
  NULL_RESULT* = 16
  WRONG_CONTEXT* = 14
  NAMING_FAILED* = 15
