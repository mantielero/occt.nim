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
##  AdvApp2Var_MathBase.hxx

import
  ../Standard/Standard_Macro, AdvApp2Var_Data_f2c

type
  AdvApp2Var_MathBase* {.importcpp: "AdvApp2Var_MathBase",
                        header: "AdvApp2Var_MathBase.hxx", bycopy.} = object ## /


proc mmapcmp_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr cdouble;
              a5: ptr cdouble): cint {.importcpp: "AdvApp2Var_MathBase::mmapcmp_(@)",
                                   header: "AdvApp2Var_MathBase.hxx".}
proc mmdrc11_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr doublereal;
              a5: ptr doublereal; a6: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmdrc11_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmca9_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr integer;
              a5: ptr integer; a6: ptr integer; a7: ptr doublereal; a8: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmca9_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmcb5_*(a1: ptr integer; a2: ptr integer; a3: ptr integer; a4: ptr doublereal;
              a5: ptr integer; a6: ptr integer; a7: ptr integer; a8: ptr doublereal;
              a9: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmfmcb5_(@)",
                                   header: "AdvApp2Var_MathBase.hxx".}
proc mmwprcs_*(a1: ptr doublereal; a2: ptr doublereal; a3: ptr doublereal;
              a4: ptr doublereal; a5: ptr integer; a6: ptr integer) {.
    importcpp: "AdvApp2Var_MathBase::mmwprcs_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcglc1_*(ndimax: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
              courbe: ptr doublereal; tdebut: ptr doublereal; tfinal: ptr doublereal;
              epsiln: ptr doublereal; xlongc: ptr doublereal; erreur: ptr doublereal;
              iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmcglc1_(@)",
                                       header: "AdvApp2Var_MathBase.hxx".}
proc mmbulld_*(nbcoln: ptr integer; nblign: ptr integer; dtabtr: ptr doublereal;
              numcle: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmbulld_(@)",
                                       header: "AdvApp2Var_MathBase.hxx".}
proc mmcdriv_*(ndimen: ptr integer; ncoeff: ptr integer; courbe: ptr doublereal;
              ideriv: ptr integer; ncofdv: ptr integer; crvdrv: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcdriv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcvctx_*(ndimen: ptr integer; ncofmx: ptr integer; nderiv: ptr integer;
              ctrtes: ptr doublereal; crvres: ptr doublereal; tabaux: ptr doublereal;
              xmatri: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcvctx_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mdsptpt_*(ndimen: ptr integer; point1: ptr doublereal; point2: ptr doublereal;
              distan: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mdsptpt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmaperx_*(ncofmx: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
              iordre: ptr integer; crvjac: ptr doublereal; ncfnew: ptr integer;
              ycvmax: ptr doublereal; errmax: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmaperx_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmdrvck_*(ncoeff: ptr integer; ndimen: ptr integer; courbe: ptr doublereal;
              ideriv: ptr integer; tparam: ptr doublereal; pntcrb: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmdrvck_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmeps1_*(epsilo: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmeps1_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmca8_*(ndimen: ptr integer; ncoefu: ptr integer; ncoefv: ptr integer;
              ndimax: ptr integer; ncfumx: ptr integer; ncfvmx: ptr integer;
              tabini: ptr doublereal; tabres: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmca8_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmcar_*(ndimen: ptr integer; ncofmx: ptr integer; ncoefu: ptr integer;
              ncoefv: ptr integer; patold: ptr doublereal; upara1: ptr doublereal;
              upara2: ptr doublereal; vpara1: ptr doublereal; vpara2: ptr doublereal;
              patnew: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmcar_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmfmtb1_*(maxsz1: ptr integer; table1: ptr doublereal; isize1: ptr integer;
              jsize1: ptr integer; maxsz2: ptr integer; table2: ptr doublereal;
              isize2: ptr integer; jsize2: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmfmtb1_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmgaus1_*(ndimf: ptr integer; bfunx: proc (ninteg: ptr integer;
    parame: ptr doublereal; vfunj1: ptr doublereal; iercod: ptr integer): cint;
              k: ptr integer; xd: ptr doublereal; xf: ptr doublereal;
              saux1: ptr doublereal; saux2: ptr doublereal; somme: ptr doublereal;
              niter: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmgaus1_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
  ## mmfunj1_() from Smoothing.cxx
proc mmhjcan_*(ndimen: ptr integer; ncourb: ptr integer; ncftab: ptr integer;
              orcont: ptr integer; ncflim: ptr integer; tcbold: ptr doublereal;
              tdecop: ptr doublereal; tcbnew: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmhjcan_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mminltt_*(ncolmx: ptr integer; nlgnmx: ptr integer; tabtri: ptr doublereal;
              nbrcol: ptr integer; nbrlgn: ptr integer; ajoute: ptr doublereal;
              epseg: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mminltt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmjaccv_*(ncoef: ptr integer; ndim: ptr integer; ider: ptr integer;
              crvlgd: ptr doublereal; polaux: ptr doublereal; crvcan: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmjaccv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmpobas_*(tparam: ptr doublereal; iordre: ptr integer; ncoeff: ptr integer;
              nderiv: ptr integer; valbas: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmpobas_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmmpocur_*(ncofmx: ptr integer; ndim: ptr integer; ndeg: ptr integer;
               courbe: ptr doublereal; tparam: ptr doublereal; tabval: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmmpocur_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmposui_*(dimmat: ptr integer; nistoc: ptr integer; aposit: ptr integer;
              posuiv: ptr integer; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmposui_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmresol_*(hdimen: ptr integer; gdimen: ptr integer; hnstoc: ptr integer;
              gnstoc: ptr integer; mnstoc: ptr integer; matsyh: ptr doublereal;
              matsyg: ptr doublereal; vecsyh: ptr doublereal; vecsyg: ptr doublereal;
              hposit: ptr integer; hposui: ptr integer; gposit: ptr integer;
              mmposui: ptr integer; mposit: ptr integer; vecsol: ptr doublereal;
              iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmresol_(@)",
                                       header: "AdvApp2Var_MathBase.hxx".}
proc mmrtptt_*(ndglgd: ptr integer; rtlegd: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmrtptt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmsrre2_*(tparam: ptr doublereal; nbrval: ptr integer; tablev: ptr doublereal;
              epsil: ptr doublereal; numint: ptr integer; itypen: ptr integer;
              iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmsrre2_(@)",
                                       header: "AdvApp2Var_MathBase.hxx".}
proc mmtrpjj_*(ncofmx: ptr integer; ndimen: ptr integer; ncoeff: ptr integer;
              epsi3d: ptr doublereal; iordre: ptr integer; crvlgd: ptr doublereal;
              ycvmax: ptr doublereal; errmax: ptr doublereal; ncfnew: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmtrpjj_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmunivt_*(ndimen: ptr integer; vector: ptr doublereal; vecnrm: ptr doublereal;
              epsiln: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmunivt_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmvncol_*(ndimen: ptr integer; vecin: ptr doublereal; vecout: ptr doublereal;
              iercod: ptr integer): cint {.importcpp: "AdvApp2Var_MathBase::mmvncol_(@)",
                                       header: "AdvApp2Var_MathBase.hxx".}
proc msc_*(ndimen: ptr integer; vecte1: ptr doublereal; vecte2: ptr doublereal): doublereal {.
    importcpp: "AdvApp2Var_MathBase::msc_(@)", header: "AdvApp2Var_MathBase.hxx".}
proc mvsheld_*(n: ptr integer; `is`: ptr integer; dtab: ptr doublereal; icle: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mvsheld_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmarcin_*(ndimax: ptr integer; ndim: ptr integer; ncoeff: ptr integer;
              crvold: ptr doublereal; u0: ptr doublereal; u1: ptr doublereal;
              crvnew: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmarcin_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmcvinv_*(ndimax: ptr integer; ncoef: ptr integer; ndim: ptr integer;
              curveo: ptr doublereal; curve: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmcvinv_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmjacan_*(ideriv: ptr integer; ndeg: ptr integer; poljac: ptr doublereal;
              polcan: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmjacan_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmpocrb_*(ndimax: ptr integer; ncoeff: ptr integer; courbe: ptr doublereal;
              ndim: ptr integer; tparam: ptr doublereal; pntcrb: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmpocrb_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmmrslwd_*(normax: ptr integer; nordre: ptr integer; ndim: ptr integer;
               amat: ptr doublereal; bmat: ptr doublereal; epspiv: ptr doublereal;
               aaux: ptr doublereal; xmat: ptr doublereal; iercod: ptr integer): cint {.
    importcpp: "AdvApp2Var_MathBase::mmmrslwd_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mmveps3_*(eps03: ptr doublereal): cint {.
    importcpp: "AdvApp2Var_MathBase::mmveps3_(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc pow__di*(x: ptr doublereal; n: ptr integer): doublereal {.
    importcpp: "AdvApp2Var_MathBase::pow__di(@)",
    header: "AdvApp2Var_MathBase.hxx".}
proc mzsnorm_*(ndimen: ptr integer; vecteu: ptr doublereal): doublereal {.
    importcpp: "AdvApp2Var_MathBase::mzsnorm_(@)",
    header: "AdvApp2Var_MathBase.hxx".}