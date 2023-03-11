/* Generated by Nim Compiler v1.6.10 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   g++ -c -std=gnu++14 -funsigned-char  -w -fmax-errors=3 -fpermissive -I/usr/include/opencascade/ -I/usr/import/opencascade/ -O3 -fno-strict-aliasing -fno-ident   -I/home/jose/.choosenim/toolchains/nim-1.6.10/lib -I/home/jose/src/nimlang/occt.nim/examples/api -o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@ssrc@slib@sexporter@stoStep.nim.cpp.o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@ssrc@slib@sexporter@stoStep.nim.cpp */
#define NIM_INTBITS 64

#include "nimbase.h"
#include "TopoDS_Shape.hxx"
#include "STEPControl_Writer.hxx"
#include "Interface_Static.hxx"
#include "IFSelect_ReturnStatus.hxx"
#include "STEPControl_StepModelType.hxx"
#include "Message_ProgressRange.hxx"
#undef LANGUAGE_C
#undef MIPSEB
#undef MIPSEL
#undef PPC
#undef R3000
#undef R4000
#undef i386
#undef linux
#undef mips
#undef near
#undef far
#undef powerpc
#undef unix
#define nimfr_(x, y)
#define nimln_(x, y)
struct NimStringDesc;
struct TGenericSeq;
struct tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw;
struct tyObject_CatchableError__qrLSDoe2oBoAqNtJ9badtnA;
struct Exception;
struct RootObj;
struct TNimType;
struct TNimNode;
struct tySequence__uB9b75OUPRENsBAu4AnoePA;
struct tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g;
struct tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w;
struct tyObject_GcHeap__1TRH1TZMaVZTnLNcIHuNFQ;
struct tyObject_GcStack__7fytPA5bBsob6See21YMRA;
struct tyObject_MemRegion__x81NhDv59b8ercDZ9bi85jyg;
struct tyObject_SmallChunk__tXn60W2f8h3jgAYdEmy5NQ;
struct tyObject_BigChunk__Rv9c70Uhp2TytkX7eH78qEg;
struct tyObject_LLChunk__XsENErzHIZV9bhvyJx56wGw;
struct tyObject_IntSet__EZObFrE3NC9bIb3YMkY9crZA;
struct tyObject_Trunk__W0r8S0Y3UGke6T9bIUWnnuw;
struct tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw;
struct tyObject_HeapLinks__PDV1HBZ8CQSQJC9aOBFNRSg;
struct tyTuple__ujsjpB2O9cjj3uDHsXbnSzg;
struct tyObject_GcStat__0RwLoVBHZPfUAcLczmfQAg;
struct tyObject_CellSet__jG87P0AI9aZtss9ccTYBIISQ;
struct tyObject_PageDesc__fublkgIY4LG3mT51LU2WHg;
struct tyObject_StackTraceEntry__oLyohQ7O2XOvGnflOss8EA;
struct TGenericSeq {
NI len;
NI reserved;
};
struct NimStringDesc : public TGenericSeq {
NIM_CHAR data[SEQ_DECL_SIZE];
};
typedef NU8 tyEnum_TNimKind__jIBKr1ejBgsfM33Kxw4j7A;
typedef NU8 tySet_tyEnum_TNimTypeFlag__v8QUszD1sWlSIWZz7mC4bQ;
typedef N_NIMCALL_PTR(void, tyProc__ojoeKfW4VYIm36I9cpDTQIg) (void* p, NI op);
typedef N_NIMCALL_PTR(void*, tyProc__WSm2xU5ARYv9aAR4l0z9c9auQ) (void* p);
struct TNimType {
NI size;
NI align;
tyEnum_TNimKind__jIBKr1ejBgsfM33Kxw4j7A kind;
tySet_tyEnum_TNimTypeFlag__v8QUszD1sWlSIWZz7mC4bQ flags;
TNimType* base;
TNimNode* node;
void* finalizer;
tyProc__ojoeKfW4VYIm36I9cpDTQIg marker;
tyProc__WSm2xU5ARYv9aAR4l0z9c9auQ deepcopy;
};
struct RootObj {
TNimType* m_type;
};
struct Exception : public RootObj {
Exception* parent;
NCSTRING name;
NimStringDesc* message;
tySequence__uB9b75OUPRENsBAu4AnoePA* trace;
Exception* up;
};
struct tyObject_CatchableError__qrLSDoe2oBoAqNtJ9badtnA : public Exception {
};
struct tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw : public tyObject_CatchableError__qrLSDoe2oBoAqNtJ9badtnA {
};
typedef NU8 tyEnum_TNimNodeKind__unfNsxrcATrufDZmpBq4HQ;
struct TNimNode {
tyEnum_TNimNodeKind__unfNsxrcATrufDZmpBq4HQ kind;
NI offset;
TNimType* typ;
NCSTRING name;
NI len;
TNimNode** sons;
};
struct tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g {
NI refcount;
TNimType* typ;
};
struct tyObject_GcStack__7fytPA5bBsob6See21YMRA {
void* bottom;
};
struct tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w {
NI len;
NI cap;
tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g** d;
};
typedef tyObject_SmallChunk__tXn60W2f8h3jgAYdEmy5NQ* tyArray__SPr7N6UKfuF549bNPiUvSRw[256];
typedef NU32 tyArray__BHbOSqU1t9b3Gt7K2c6fQig[24];
typedef tyObject_BigChunk__Rv9c70Uhp2TytkX7eH78qEg* tyArray__N1u1nqOgmuJN9cSZrnMHgOQ[32];
typedef tyArray__N1u1nqOgmuJN9cSZrnMHgOQ tyArray__B6durA4ZCi1xjJvRtyYxMg[24];
typedef tyObject_Trunk__W0r8S0Y3UGke6T9bIUWnnuw* tyArray__lh2A89ahMmYg9bCmpVaplLbA[256];
struct tyObject_IntSet__EZObFrE3NC9bIb3YMkY9crZA {
tyArray__lh2A89ahMmYg9bCmpVaplLbA data;
};
typedef tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw* tyArray__0aOLqZchNi8nWtMTi8ND8w[2];
struct tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw {
tyArray__0aOLqZchNi8nWtMTi8ND8w link;
NI key;
NI upperBound;
NI level;
};
struct tyTuple__ujsjpB2O9cjj3uDHsXbnSzg {
tyObject_BigChunk__Rv9c70Uhp2TytkX7eH78qEg* Field0;
NI Field1;
};
typedef tyTuple__ujsjpB2O9cjj3uDHsXbnSzg tyArray__LzOv2eCDGiceMKQstCLmhw[30];
struct tyObject_HeapLinks__PDV1HBZ8CQSQJC9aOBFNRSg {
NI len;
tyArray__LzOv2eCDGiceMKQstCLmhw chunks;
tyObject_HeapLinks__PDV1HBZ8CQSQJC9aOBFNRSg* next;
};
struct tyObject_MemRegion__x81NhDv59b8ercDZ9bi85jyg {
NI minLargeObj;
NI maxLargeObj;
tyArray__SPr7N6UKfuF549bNPiUvSRw freeSmallChunks;
NU32 flBitmap;
tyArray__BHbOSqU1t9b3Gt7K2c6fQig slBitmap;
tyArray__B6durA4ZCi1xjJvRtyYxMg matrix;
tyObject_LLChunk__XsENErzHIZV9bhvyJx56wGw* llmem;
NI currMem;
NI maxMem;
NI freeMem;
NI occ;
NI lastSize;
tyObject_IntSet__EZObFrE3NC9bIb3YMkY9crZA chunkStarts;
tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw* root;
tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw* deleted;
tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw* last;
tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw* freeAvlNodes;
NIM_BOOL locked;
NIM_BOOL blockChunkSizeIncrease;
NI nextChunkSize;
tyObject_AvlNode__IaqjtwKhxLEpvDS9bct9blEw bottomData;
tyObject_HeapLinks__PDV1HBZ8CQSQJC9aOBFNRSg heapLinks;
};
struct tyObject_GcStat__0RwLoVBHZPfUAcLczmfQAg {
NI stackScans;
NI cycleCollections;
NI maxThreshold;
NI maxStackSize;
NI maxStackCells;
NI cycleTableSize;
NI64 maxPause;
};
struct tyObject_CellSet__jG87P0AI9aZtss9ccTYBIISQ {
NI counter;
NI max;
tyObject_PageDesc__fublkgIY4LG3mT51LU2WHg* head;
tyObject_PageDesc__fublkgIY4LG3mT51LU2WHg** data;
};
struct tyObject_GcHeap__1TRH1TZMaVZTnLNcIHuNFQ {
tyObject_GcStack__7fytPA5bBsob6See21YMRA stack;
NI cycleThreshold;
NI zctThreshold;
tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w zct;
tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w decStack;
tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w tempStack;
NI recGcLock;
tyObject_MemRegion__x81NhDv59b8ercDZ9bi85jyg region;
tyObject_GcStat__0RwLoVBHZPfUAcLczmfQAg stat;
tyObject_CellSet__jG87P0AI9aZtss9ccTYBIISQ marked;
tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w additionalRoots;
NI gcThreadId;
};
struct tyObject_StackTraceEntry__oLyohQ7O2XOvGnflOss8EA {
NCSTRING procname;
NI line;
NCSTRING filename;
};
struct tySequence__uB9b75OUPRENsBAu4AnoePA : TGenericSeq {
  tyObject_StackTraceEntry__oLyohQ7O2XOvGnflOss8EA data[SEQ_DECL_SIZE];
};
N_LIB_PRIVATE N_NOINLINE(void*, newObj)(TNimType* typ, NI size);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, copyStringRC1)(NimStringDesc* src);
static N_INLINE(void, nimGCunrefNoCycle)(void* p);
static N_INLINE(void, decRef__system_5324)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c);
static N_INLINE(NI, minuspercent___system_716)(NI x, NI y);
static N_INLINE(NIM_BOOL, ltpercent___system_1005)(NI x, NI y);
static N_INLINE(void, rtlAddZCT__system_5322)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c);
N_LIB_PRIVATE N_NOINLINE(void, addZCT__system_5273)(tyObject_CellSeq__Axo1XVm9aaQueTOldv8le5w& s, tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c);
static N_INLINE(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g*, usrToCell__system_5279)(void* usr);
static N_INLINE(void, asgnRef)(void** dest, void* src);
static N_INLINE(void, incRef__system_5317)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c);
static N_INLINE(NI, pluspercent___system_696)(NI x, NI y);
N_LIB_PRIVATE N_NIMCALL(void, raiseExceptionEx)(Exception* e, NCSTRING ename, NCSTRING procname, NCSTRING filename, NI line);
static N_INLINE(NCSTRING, nimToCStringConv)(NimStringDesc* s);
extern TNimType NTIrefvalueerror__Ie1m0dv1ZHg72IgPRr1cDw_;
extern TNimType NTIvalueerror__yoNlBGx0D2tRizIdhQuENw_;
STRING_LITERAL(TM__dhCWJWprtbk9a2d3s2uezBw_2, "Error while transferring shape to STEP", 38);
STRING_LITERAL(TM__dhCWJWprtbk9a2d3s2uezBw_3, "Error while writing transferred shape to STEP file", 50);
extern tyObject_GcHeap__1TRH1TZMaVZTnLNcIHuNFQ gch__system_5226;
static N_INLINE(NI, minuspercent___system_716)(NI x, NI y) {
	NI result;
	result = (NI)0;
	result = ((NI) ((NU)((NU64)(((NU) (x))) - (NU64)(((NU) (y))))));
	return result;
}
static N_INLINE(NIM_BOOL, ltpercent___system_1005)(NI x, NI y) {
	NIM_BOOL result;
	result = (NIM_BOOL)0;
	result = ((NU64)(((NU) (x))) < (NU64)(((NU) (y))));
	return result;
}
static N_INLINE(void, rtlAddZCT__system_5322)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c) {
	addZCT__system_5273(gch__system_5226.zct, c);
}
static N_INLINE(void, decRef__system_5324)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c) {
	(*c).refcount = minuspercent___system_716((*c).refcount, ((NI) 8));
	{
		NIM_BOOL T3_ = ltpercent___system_1005((*c).refcount, ((NI) 8));
		if (!T3_) goto LA4_;
{		rtlAddZCT__system_5322(c);
}	}
	LA4_: ;
}
static N_INLINE(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g*, usrToCell__system_5279)(void* usr) {
	tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* result;
	result = (tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g*)0;
	NI T1_ = minuspercent___system_716(((NI) (ptrdiff_t) (usr)), ((NI) 16));
	result = ((tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g*) (T1_));
	return result;
}
static N_INLINE(void, nimGCunrefNoCycle)(void* p) {
	tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* T1_ = usrToCell__system_5279(p);
	decRef__system_5324(T1_);
}
static N_INLINE(NI, pluspercent___system_696)(NI x, NI y) {
	NI result;
	result = (NI)0;
	result = ((NI) ((NU)((NU64)(((NU) (x))) + (NU64)(((NU) (y))))));
	return result;
}
static N_INLINE(void, incRef__system_5317)(tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* c) {
	(*c).refcount = pluspercent___system_696((*c).refcount, ((NI) 8));
}
static N_INLINE(void, asgnRef)(void** dest, void* src) {
	{
		if (!!((src == NIM_NIL))) goto LA3_;
{		tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* T5_ = usrToCell__system_5279(src);
		incRef__system_5317(T5_);
}	}
	LA3_: ;
	{
		if (!!(((*dest) == NIM_NIL))) goto LA8_;
{		tyObject_Cell__1zcF9cV8XIAtbN8h5HRUB8g* T10_ = usrToCell__system_5279((*dest));
		decRef__system_5324(T10_);
}	}
	LA8_: ;
	(*dest) = src;
}
static N_INLINE(NCSTRING, nimToCStringConv)(NimStringDesc* s) {
	NCSTRING result;
	result = (NCSTRING)0;
	{
		NIM_BOOL T3_;
		T3_ = (NIM_BOOL)0;
		T3_ = (s == ((NimStringDesc*) NIM_NIL));
		if (T3_) goto LA4_;
		T3_ = ((*s).len == ((NI) 0));
		LA4_: ;
		if (!T3_) goto LA5_;
{		result = "";
}	}
	goto LA1_;
	LA5_: ;
	{
		result = ((NCSTRING) ((*s).data));
	}
	LA1_: ;
	return result;
}
N_LIB_PRIVATE N_NIMCALL(void, toSTEP__sketcher50d954849_491)(TopoDS_Shape solid, NimStringDesc* fname) {
	STEPControl_Writer writer;
	NIM_BOOL tmp1 = Interface_Static::SetCVal("xstep.cascade.unit", "MM");
	NIM_BOOL tmp2 = Interface_Static::SetCVal("write.step.unit", "MM");
	NIM_BOOL tmp3 = Interface_Static::SetIVal("write.step.nonmanifold", ((int) 1));
	IFSelect_ReturnStatus transferStatus = writer.Transfer(solid, ((STEPControl_StepModelType) 0), NIM_TRUE, Message_ProgressRange());
	{
		tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw* T5_;
		NimStringDesc* T6_;
		if (!!((transferStatus == ((IFSelect_ReturnStatus) 1)))) goto LA3_;
{		T5_ = NIM_NIL;
		T5_ = (tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw*) newObj((&NTIrefvalueerror__Ie1m0dv1ZHg72IgPRr1cDw_), sizeof(tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw));
		(*T5_).m_type = (&NTIvalueerror__yoNlBGx0D2tRizIdhQuENw_);
		(*T5_).name = "ValueError";
		T6_ = NIM_NIL;
		T6_ = (*T5_).message; (*T5_).message = copyStringRC1(((NimStringDesc*) &TM__dhCWJWprtbk9a2d3s2uezBw_2));
		if (T6_) nimGCunrefNoCycle(T6_);
		asgnRef((void**) (&(*T5_).parent), ((Exception*) NIM_NIL));
		raiseExceptionEx((Exception*)T5_, "ValueError", "toSTEP", "toStep.nim", 16);
}	}
	LA3_: ;
	IFSelect_ReturnStatus writeStatus = writer.Write(nimToCStringConv(fname));
	{
		tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw* T11_;
		NimStringDesc* T12_;
		if (!!((writeStatus == ((IFSelect_ReturnStatus) 1)))) goto LA9_;
{		T11_ = NIM_NIL;
		T11_ = (tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw*) newObj((&NTIrefvalueerror__Ie1m0dv1ZHg72IgPRr1cDw_), sizeof(tyObject_ValueError__yoNlBGx0D2tRizIdhQuENw));
		(*T11_).m_type = (&NTIvalueerror__yoNlBGx0D2tRizIdhQuENw_);
		(*T11_).name = "ValueError";
		T12_ = NIM_NIL;
		T12_ = (*T11_).message; (*T11_).message = copyStringRC1(((NimStringDesc*) &TM__dhCWJWprtbk9a2d3s2uezBw_3));
		if (T12_) nimGCunrefNoCycle(T12_);
		asgnRef((void**) (&(*T11_).parent), ((Exception*) NIM_NIL));
		raiseExceptionEx((Exception*)T11_, "ValueError", "toSTEP", "toStep.nim", 21);
}	}
	LA9_: ;
}
