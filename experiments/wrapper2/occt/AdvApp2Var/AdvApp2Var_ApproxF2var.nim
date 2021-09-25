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
##  AdvApp2Var_ApproxF2var.hxx
## ---------------------------------------------------------------
## |  description de la macro et du prototype des routines
## |  de l'approximation a deux variables
## |  a utiliser dans AdvApp2Var
## |--------------------------------------------------------------


type
  AdvApp2VarApproxF2var* {.importcpp: "AdvApp2Var_ApproxF2var",
                          header: "AdvApp2Var_ApproxF2var.hxx", bycopy.} = object


proc mma2fnc*(ndimen: ptr integer; nbsesp: ptr integer; ndimse: ptr integer;
             uvfonc: ptr Doublereal; foncnp: AdvApp2VarEvaluatorFunc2Var;
             tconst: ptr Doublereal; isofav: ptr integer; nbroot: ptr integer;
             rootlg: ptr Doublereal; iordre: ptr integer; ideriv: ptr integer;
             ndgjac: ptr integer; nbcrmx: ptr integer; ncflim: ptr integer;
             epsapr: ptr Doublereal; ncoeff: ptr integer; courbe: ptr Doublereal;
             nbcrbe: ptr integer; somtab: ptr Doublereal; diftab: ptr Doublereal;
             contr1: ptr Doublereal; contr2: ptr Doublereal; tabdec: ptr Doublereal;
             errmax: ptr Doublereal; errmoy: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2fnc_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2roo*(nbpntu: ptr integer; nbpntv: ptr integer; urootl: ptr Doublereal;
             vrootl: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2roo_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2jmx*(ndgjac: ptr integer; iordre: ptr integer; xjacmx: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2jmx_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mmapptt*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr Doublereal;
             a5: ptr integer): cint {.importcpp: "AdvApp2Var_ApproxF2var::mmapptt_(@)",
                                  header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2cdi*(ndimen: ptr integer; nbpntu: ptr integer; urootl: ptr Doublereal;
             nbpntv: ptr integer; vrootl: ptr Doublereal; iordru: ptr integer;
             iordrv: ptr integer; contr1: ptr Doublereal; contr2: ptr Doublereal;
             contr3: ptr Doublereal; contr4: ptr Doublereal; sotbu1: ptr Doublereal;
             sotbu2: ptr Doublereal; ditbu1: ptr Doublereal; ditbu2: ptr Doublereal;
             sotbv1: ptr Doublereal; sotbv2: ptr Doublereal; ditbv1: ptr Doublereal;
             ditbv2: ptr Doublereal; sosotb: ptr Doublereal; soditb: ptr Doublereal;
             disotb: ptr Doublereal; diditb: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2cdi_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ds1*(ndimen: ptr integer; uintfn: ptr Doublereal; vintfn: ptr Doublereal;
             foncnp: AdvApp2VarEvaluatorFunc2Var; nbpntu: ptr integer;
             nbpntv: ptr integer; urootb: ptr Doublereal; vrootb: ptr Doublereal;
             isofav: ptr integer; sosotb: ptr Doublereal; disotb: ptr Doublereal;
             soditb: ptr Doublereal; diditb: ptr Doublereal; fpntab: ptr Doublereal;
             ttable: ptr Doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ds1_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ce1*(numdec: ptr integer; ndimen: ptr integer; nbsesp: ptr integer;
             ndimse: ptr integer; ndminu: ptr integer; ndminv: ptr integer;
             ndguli: ptr integer; ndgvli: ptr integer; ndjacu: ptr integer;
             ndjacv: ptr integer; iordru: ptr integer; iordrv: ptr integer;
             nbpntu: ptr integer; nbpntv: ptr integer; epsapr: ptr Doublereal;
             sosotb: ptr Doublereal; disotb: ptr Doublereal; soditb: ptr Doublereal;
             diditb: ptr Doublereal; patjac: ptr Doublereal; errmax: ptr Doublereal;
             errmoy: ptr Doublereal; ndegpu: ptr integer; ndegpv: ptr integer;
             itydec: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ce1_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2can*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
             a5: ptr integer; a6: ptr integer; a7: ptr integer; a8: ptr Doublereal;
             a9: ptr Doublereal; a10: ptr Doublereal; a11: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2can_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma1her*(a1: ptr integer; a2: ptr Doublereal; a3: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma1her_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac2*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
             a5: ptr integer; a6: ptr integer; a7: ptr Doublereal; a8: ptr integer;
             a9: ptr Doublereal; a10: ptr Doublereal; a11: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ac2_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac3*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
             a5: ptr integer; a6: ptr integer; a7: ptr Doublereal; a8: ptr integer;
             a9: ptr Doublereal; a10: ptr Doublereal; a11: ptr Doublereal): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2ac3_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2ac1*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
             a5: ptr integer; a6: ptr Doublereal; a7: ptr Doublereal; a8: ptr Doublereal;
             a9: ptr Doublereal; a10: ptr Doublereal; a11: ptr Doublereal;
             a12: ptr Doublereal): cint {.importcpp: "AdvApp2Var_ApproxF2var::mma2ac1_(@)",
                                      header: "AdvApp2Var_ApproxF2var.hxx".}
proc mma2fx6*(ncfmxu: ptr integer; ncfmxv: ptr integer; ndimen: ptr integer;
             nbsesp: ptr integer; ndimse: ptr integer; nbupat: ptr integer;
             nbvpat: ptr integer; iordru: ptr integer; iordrv: ptr integer;
             epsapr: ptr Doublereal; epsfro: ptr Doublereal; patcan: ptr Doublereal;
             errmax: ptr Doublereal; ncoefu: ptr integer; ncoefv: ptr integer): cint {.
    importcpp: "AdvApp2Var_ApproxF2var::mma2fx6_(@)",
    header: "AdvApp2Var_ApproxF2var.hxx".}
