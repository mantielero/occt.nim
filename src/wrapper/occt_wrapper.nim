#{.experimental: "codeReordering".}
{.experimental: "callOperator".}

import cnew


# TKBO
import bopalgo/bopalgo_includes
import brepalgoapi/brepalgoapi_includes

# TKBool
import topopebrepbuild/topopebrepbuild_includes
import topopebrepds/topopebrepds_includes
import topopebreptool/topopebreptool_includes

# TKBrep
import breptools/breptools_includes
import topods/topods_includes
import toptools/toptools_includes
import brep/brep_includes
import brepadaptor/brepadaptor_includes
import topexp/topexp_includes

# TKCDF
import cdf/cdf_includes
import cdm/cdm_includes
import pcdm/pcdm_includes
import ldom/ldom_includes

# TKernel
import standard/standard_package
import ncollection/ncollection_package
import tcolstd/tcolstd_includes
import message/message_includes
import quantity/quantity_includes
import tcollection/tcollection_includes
import storage/storage_includes
import resource/resource_includes
import unitsmethods/unitsmethods_includes
import osd/osd_includes

# TKFillet
import brepfilletapi/brepfilletapi_includes
import chfids/chfids_includes
import chfi3d/chfi3d_includes
import chfi2d/chfi2d_includes
import brepblend/brepblend_includes
import blend/blend_includes
import blendfunc/blendfunc_includes

# TKG2d

import geom2d/geom2d_includes
import adaptor2d/adaptor2d_includes
import geom2dadaptor/geom2dadaptor_includes

# TKG3d

import geom/geom_includes
import topabs/topabs_includes
import adaptor3d/adaptor3d_includes
import geomadaptor/geomadaptor_includes
import tcolgeom/tcolgeom_includes
import gprop/gprop_includes

# TKGeomAlgo
import law/law_includes
import geomfill/geomfill_includes
import intsurf/intsurf_includes
import appblend/appblend_includes


# TKGeombase
import gc/gc_includes
import gce/gce_includes
import approx/approx_includes
import appcont/appcont_includes
import appparcurves/appparcurves_includes
import extrema/extrema_includes
import gce2d/gce2d_includes

# TKLKAF
import tdf/tdf_includes
import tdatastd/tdatastd_includes
import tdocstd/tdocstd_includes

# TKMath

import gp/gp_includes
import tcolgp/tcolgp_includes
import geomabs/geomabs_includes
import toploc/toploc_includes
import poly/poly_includes
import math/math_includes
import precision/precision_includes
import convert/convert_includes
import bnd/bnd_includes
import bvh/bvh_includes
import elclib/elclib_includes

# TKOffset
import brepoffset/brepoffset_includes#tkoffset



# TKOpenGl
import opengl/opengl_includes


# TKPrim
import brepprim/brepprim_includes
import brepprimapi/brepprimapi_includes

# TKService
import aspect/aspect_includes
import xw/xw_includes


# TKTopAlgo
import brepcheck/brepcheck_includes
import brepextrema/brepextrema_includes
import brepbuilderapi/brepbuilderapi_includes
import breplib/breplib_includes
import brepgprop/brepgprop_includes


# TKStep
import stepcontrol/stepcontrol_includes

# TKV3d
import v3d/v3d_includes
import ais/ais_includes
import selectmgr/selectmgr_includes
import prsdim/prsdim_includes
import prs3d/prs3d_includes
import prsmgr/prsmgr_includes
import graphic3d/graphic3d_includes

# TKXCAF
import xcafdoc/xcafdoc_includes
import xcafdimtolobjects/xcafdimtolobjects_includes
import xcafnoteobjects/xcafnoteobjects_includes

# TKXDESTEP
import stepcafcontrol/stepcafcontrol_includes

# TKXSBase
import transfer/transfer_includes
import "interface/interface_includes"
import ifselect/ifselect_includes

#--------------------------------------------------------

export cnew
# export tkernel
# export tkmath
# export tkgeombase
# export tkg3d
# export tkg2d
# export tkbrep
# export tktopalgo
# export tkprim
# export tkfillet
# export tkbool
# export tkgeomalgo
# export tkbo
# export tkxsbase
# export tkv3d
# export tkservice
# export tkopengl


# TKBO
export bopalgo_includes
export brepalgoapi_includes

# TKBool
export topopebrepbuild_includes
export topopebrepds_includes
export topopebreptool_includes


# TKBrep
export breptools_includes
export topods_includes
export toptools_includes
export brep_includes
export brepadaptor_includes
export topexp_includes

# TKCDF
export cdf_includes
export cdm_includes
export pcdm_includes
export ldom_includes

# TKernel
export standard_package
export ncollection_package
export tcolstd_includes
export message_includes
export quantity_includes
export tcollection_includes
export storage_includes
export resource_includes
export unitsmethods_includes
export osd_includes

# TKFillet
export brepfilletapi_includes
export chfids_includes
export chfi3d_includes
export chfi2d_includes
export brepblend_includes
export blend_includes
export blendfunc_includes

# TKG2d
export geom2d_includes
export adaptor2d_includes
export geom2dadaptor_includes

# TKG3d
export geom_includes
export topabs_includes
export adaptor3d_includes
export geomadaptor_includes
export tcolgeom_includes
export gprop_includes


# TKGeomAlgo
export law_includes
export geomfill_includes
export intsurf_includes
export appblend_includes

# TKGeomBase
export gc_includes
export gce_includes
export approx_includes
export appcont_includes
export appparcurves_includes
export extrema_includes
export gce2d_includes

# TKLKAF
export tdf_includes
export tdatastd_includes
export tdocstd_includes

# TKMath
export gp_includes
export tcolgp_includes
export geomabs_includes
export toploc_includes
export poly_includes
export math_includes
export precision_includes
export convert_includes
export bnd_includes
export bvh_includes
export elclib_includes


# TKOffset
export brepoffset_includes

# TKOpenGl
export opengl_includes


# TKPrim
export brepprim_includes
export brepprimapi_includes


# TKService
export aspect_includes
export xw_includes

# TKTopAlgo
export brepcheck_includes
export brepextrema_includes
export brepbuilderapi_includes
export breplib_includes
export brepgprop_includes


# TKStep
export stepcontrol_includes



# TKV3d
export v3d_includes
export ais_includes
export selectmgr_includes
export prsdim_includes
export prs3d_includes
export prsmgr_includes
export graphic3d_includes

# TKXCAF
export xcafdoc_includes
export xcafdimtolobjects_includes
export xcafnoteobjects_includes

# TKXDESTEP
export stepcafcontrol_includes

# TKXSBase
export transfer_includes
export interface_includes
export ifselect_includes

