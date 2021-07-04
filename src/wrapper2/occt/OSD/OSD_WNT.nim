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

when not defined(_INC_WINDOWS):
  discard
type
  DIR_RESPONSE* {.size: sizeof(cint), importcpp: "DIR_RESPONSE",
                 header: "OSD_WNT.hxx".} = enum
    DIR_ABORT, DIR_RETRY, DIR_IGNORE


const
  FLAG_READ_PIPE* = 0x00000001
  FLAG_EOF* = 0x00000002
  FLAG_FILE* = 0x00000004
  FLAG_DIRECTORY* = 0x00000008
  FLAG_PIPE* = 0x00000010
  FLAG_SOCKET* = 0x00000020
  FLAG_NAMED_PIPE* = 0x00000040
  FLAG_DEVICE* = 0x00000080
  FLAG_TYPE* = 0x0000007C

##  2 macros modified for VisualAge
## #define LODWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) & 0x00000000FFFFFFFF   )
## #define HIDWORD( a ) ( DWORD )(   ( ( DWORDLONG )( a ) ) >> 32                  )

template LODWORD*(a: untyped): untyped =
  (DWORD)(((_int64)(a)) and 0x00000000FFFFFFFF'i64)

template HIDWORD*(a: untyped): untyped =
  (DWORD)(((_int64)(a)) shr 32)

type
  FILE_ACE* {.importcpp: "FILE_ACE", header: "OSD_WNT.hxx", bycopy.} = object
    header* {.importc: "header".}: ACE_HEADER
    dwMask* {.importc: "dwMask".}: DWORD
    pSID* {.importc: "pSID".}: PSID

  PFILE_ACE* = ptr FILE_ACE
  MOVE_DIR_PROC* = proc (a1: LPCWSTR; a2: LPCWSTR)
  COPY_DIR_PROC* = proc (a1: LPCWSTR; a2: LPCWSTR)
  DELETE_DIR_PROC* = proc (a1: LPCWSTR)
  RESPONSE_DIR_PROC* = proc (a1: LPCWSTR): DIR_RESPONSE

template GET_SID*(pACE: untyped): untyped =
  ((PSID)((cast[PBYTE](pACE)) + sizeof((ACE_HEADER)) + sizeof((DWORD))))

template GET_MSK*(pACE: untyped): untyped =
  ((PDWORD)((cast[PBYTE](pACE)) + sizeof((ACE_HEADER))))

proc AllocSD*(): PSECURITY_DESCRIPTOR {.importcpp: "AllocSD(@)",
                                     header: "OSD_WNT.hxx".}
proc FreeSD*(a1: PSECURITY_DESCRIPTOR) {.importcpp: "FreeSD(@)",
                                      header: "OSD_WNT.hxx".}
proc GetTokenInformationEx*(a1: HANDLE; a2: TOKEN_INFORMATION_CLASS): LPVOID {.
    importcpp: "GetTokenInformationEx(@)", header: "OSD_WNT.hxx".}
proc FreeTokenInformation*(a1: LPVOID) {.importcpp: "FreeTokenInformation(@)",
                                      header: "OSD_WNT.hxx".}
proc GetFileSecurityEx*(a1: LPCWSTR; a2: SECURITY_INFORMATION): PSECURITY_DESCRIPTOR {.
    importcpp: "GetFileSecurityEx(@)", header: "OSD_WNT.hxx".}
proc FreeFileSecurity*(a1: PSECURITY_DESCRIPTOR) {.
    importcpp: "FreeFileSecurity(@)", header: "OSD_WNT.hxx".}
proc CreateAcl*(a1: DWORD): PACL {.importcpp: "CreateAcl(@)", header: "OSD_WNT.hxx".}
proc FreeAcl*(a1: PACL) {.importcpp: "FreeAcl(@)", header: "OSD_WNT.hxx".}
proc PredefinedSid*(a1: PSID): BOOL {.importcpp: "PredefinedSid(@)",
                                  header: "OSD_WNT.hxx".}
proc NtPredefinedSid*(a1: PSID): BOOL {.importcpp: "NtPredefinedSid(@)",
                                    header: "OSD_WNT.hxx".}
proc AdminSid*(): PSID {.importcpp: "AdminSid(@)", header: "OSD_WNT.hxx".}
proc WorldSid*(): PSID {.importcpp: "WorldSid(@)", header: "OSD_WNT.hxx".}
proc InteractiveSid*(): PSID {.importcpp: "InteractiveSid(@)", header: "OSD_WNT.hxx".}
proc NetworkSid*(): PSID {.importcpp: "NetworkSid(@)", header: "OSD_WNT.hxx".}
proc LocalSid*(): PSID {.importcpp: "LocalSid(@)", header: "OSD_WNT.hxx".}
proc DialupSid*(): PSID {.importcpp: "DialupSid(@)", header: "OSD_WNT.hxx".}
proc BatchSid*(): PSID {.importcpp: "BatchSid(@)", header: "OSD_WNT.hxx".}
proc CreatorOwnerSid*(): PSID {.importcpp: "CreatorOwnerSid(@)",
                             header: "OSD_WNT.hxx".}
proc NullSid*(): PSID {.importcpp: "NullSid(@)", header: "OSD_WNT.hxx".}
proc NtSid*(): PSID {.importcpp: "NtSid(@)", header: "OSD_WNT.hxx".}
proc AllocAccessAllowedAce*(a1: DWORD; a2: BYTE; a3: PSID): PVOID {.
    importcpp: "AllocAccessAllowedAce(@)", header: "OSD_WNT.hxx".}
proc FreeAce*(a1: PVOID) {.importcpp: "FreeAce(@)", header: "OSD_WNT.hxx".}
proc MoveDirectory*(a1: LPCWSTR; a2: LPCWSTR): BOOL {.importcpp: "MoveDirectory(@)",
    header: "OSD_WNT.hxx".}
proc CopyDirectory*(a1: LPCWSTR; a2: LPCWSTR): BOOL {.importcpp: "CopyDirectory(@)",
    header: "OSD_WNT.hxx".}
proc SetMoveDirectoryProc*(a1: MOVE_DIR_PROC) {.
    importcpp: "SetMoveDirectoryProc(@)", header: "OSD_WNT.hxx".}
proc SetCopyDirectoryProc*(a1: COPY_DIR_PROC) {.
    importcpp: "SetCopyDirectoryProc(@)", header: "OSD_WNT.hxx".}
proc SetResponseDirectoryProc*(a1: RESPONSE_DIR_PROC) {.
    importcpp: "SetResponseDirectoryProc(@)", header: "OSD_WNT.hxx".}