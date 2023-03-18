

##  Copyright (c) 1998-1999 Matra Datavision
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

##  List of OSD error codes

const
  ERR_SURPRISE* = -2

##  Error message management didn't follow code evolution

const
  ERR_UNKNOWN* = -1

##  Unknown system error

const
  ERR_NONE* = 0

##  No error
##  Errors common to alot of classes

const
  ERR_ACCESS* = 1
  ERR_EXIST* = 2
  ERR_FAULT* = 3
  ERR_INTR* = 4
  ERR_INVAL* = 5
  ERR_IO* = 6
  ERR_ISDIR* = 7
  ERR_NAMETOOLONG* = 8
  ERR_NOENT* = 9
  ERR_NOMEM* = 10
  ERR_NOTDIR* = 11
  ERR_PERM* = 12
  ERR_QUOT* = 13
  ERR_RANGE* = 14
  ERR_ROFS* = 15
  ERR_TOOBIG* = 16

## ------------------- Error list by class Family ------------------------
##  Class Directory

const
  ERR_DMLINK* = 17
  ERR_DNOENT* = 18

##  Class File

const
  ERR_FAGAIN* = 19
  ERR_FBADF* = 20
  ERR_FBADMSG* = 21
  ERR_FDEADLK* = 22
  ERR_FEXIST* = 23
  ERR_FFBIG* = 24
  ERR_FINVAL* = 25
  ERR_FIO* = 26
  ERR_FLOCKED* = 27
  ERR_FMFILE* = 28
  ERR_FNOLCK* = 29
  ERR_FPERM* = 30
  ERR_FRANGE* = 31
  ERR_FWFD* = 32

##  Class FileNode

const
  ERR_FNBUSY* = 33
  ERR_FNFILE* = 34
  ERR_FNINVAL* = 35
  ERR_FNOSPC* = 36
  ERR_FNNOTEMPTY* = 37
  ERR_FNXDEV* = 38

##  Package

const
  ERR_PPERM* = 50

