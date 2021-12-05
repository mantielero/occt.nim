##  Copyright (c) 1997-1999 Matra Datavision
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

##
##        Since Cas.cade version 1.5 ,the default unit LENGTH is MILLIMETER.
## #define METER *1.
## #define CENTIMETER *0.01
## #define TOCENTIMETER(v) (v)*100.
## #define FROMCENTIMETER(v) (v)/100.
## #define MILLIMETER *0.001
## #define TOMILLIMETER(v) (v)*1000.
## #define FROMMILLIMETER(v) (v)/1000.
##

const
  METER* = 1000.0
  CENTIMETER* = 10.0

template tocentimeter*(v: untyped): untyped =
  (v) div 10.0

template fromcentimeter*(v: untyped): untyped =
  (v) * 10.0

const
  MILLIMETER* = 1.0

template tomillimeter*(v: untyped): untyped =
  v

template frommillimeter*(v: untyped): untyped =
  v
