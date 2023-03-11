/* Generated by Nim Compiler v1.6.10 */
/* Compiled for: Linux, amd64, gcc */
/* Command for C compiler:
   g++ -c -std=gnu++14 -funsigned-char  -w -fmax-errors=3 -fpermissive -I/usr/include/opencascade/ -I/usr/import/opencascade/ -O3 -fno-strict-aliasing -fno-ident   -I/home/jose/.choosenim/toolchains/nim-1.6.10/lib -I/home/jose/src/nimlang/occt.nim/examples/api -o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.10@slib@sstd@sprivate@sdigitsutils.nim.cpp.o /home/jose/src/nimlang/occt.nim/examples/api/borrame/@m..@s..@s..@s..@s..@s.choosenim@stoolchains@snim-1.6.10@slib@sstd@sprivate@sdigitsutils.nim.cpp */
#define NIM_INTBITS 64

#include "nimbase.h"
#include <string.h>
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
struct TGenericSeq {
NI len;
NI reserved;
};
struct NimStringDesc : public TGenericSeq {
NIM_CHAR data[SEQ_DECL_SIZE];
};
typedef NIM_CHAR tyArray__PbS9a6gkxCuxWEnFq4lOU9aw[24];
typedef NIM_CHAR tyArray__38Z69amCaoywES5tRmClBSw[200];
N_LIB_PRIVATE N_NOINLINE(void, raiseOverflow)(void);
N_LIB_PRIVATE N_NOINLINE(void, raiseRangeErrorI)(NI64 i, NI64 a, NI64 b);
N_LIB_PRIVATE N_NIMCALL(NimStringDesc*, setLengthStr)(NimStringDesc* s, NI newLen);
N_LIB_PRIVATE N_NIMCALL(void, unsureAsgnRef)(void** dest, void* src);
N_LIB_PRIVATE N_NOINLINE(void, raiseIndexError2)(NI i, NI n);
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_164)(NimStringDesc*& result, NU64 x);
static N_INLINE(void, addIntImpl__stdZprivateZdigitsutils_59)(NimStringDesc*& result, NU64 x);
N_LIB_PRIVATE N_NOINLINE(void, raiseRangeErrorNoArgs)(void);
static N_INLINE(void, addChars__stdZprivateZdigitsutils_100)(NimStringDesc*& result, tyArray__PbS9a6gkxCuxWEnFq4lOU9aw x, NI start, NI n);
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size);
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size);
N_LIB_PRIVATE NIM_CONST tyArray__38Z69amCaoywES5tRmClBSw digits100__stdZprivateZdigitsutils_2 = {48,
48,
48,
49,
48,
50,
48,
51,
48,
52,
48,
53,
48,
54,
48,
55,
48,
56,
48,
57,
49,
48,
49,
49,
49,
50,
49,
51,
49,
52,
49,
53,
49,
54,
49,
55,
49,
56,
49,
57,
50,
48,
50,
49,
50,
50,
50,
51,
50,
52,
50,
53,
50,
54,
50,
55,
50,
56,
50,
57,
51,
48,
51,
49,
51,
50,
51,
51,
51,
52,
51,
53,
51,
54,
51,
55,
51,
56,
51,
57,
52,
48,
52,
49,
52,
50,
52,
51,
52,
52,
52,
53,
52,
54,
52,
55,
52,
56,
52,
57,
53,
48,
53,
49,
53,
50,
53,
51,
53,
52,
53,
53,
53,
54,
53,
55,
53,
56,
53,
57,
54,
48,
54,
49,
54,
50,
54,
51,
54,
52,
54,
53,
54,
54,
54,
55,
54,
56,
54,
57,
55,
48,
55,
49,
55,
50,
55,
51,
55,
52,
55,
53,
55,
54,
55,
55,
55,
56,
55,
57,
56,
48,
56,
49,
56,
50,
56,
51,
56,
52,
56,
53,
56,
54,
56,
55,
56,
56,
56,
57,
57,
48,
57,
49,
57,
50,
57,
51,
57,
52,
57,
53,
57,
54,
57,
55,
57,
56,
57,
57}
;
static N_INLINE(void, nimCopyMem)(void* dest, void* source, NI size) {
	void* T1_ = memcpy(dest, source, ((size_t) (size)));
}
static N_INLINE(void, copyMem__system_1727)(void* dest, void* source, NI size) {
	nimCopyMem(dest, source, size);
}
static N_INLINE(void, addChars__stdZprivateZdigitsutils_100)(NimStringDesc*& result, tyArray__PbS9a6gkxCuxWEnFq4lOU9aw x, NI start, NI n) {
	NI TM__J7BLF9cgvwzEso7aEL9cCOKw_7;
	NI old = (result ? result->len : 0);
	if (nimAddInt(old, n, &TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) { raiseOverflow(); };
	if (((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) < ((NI) 0) || ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7), ((NI) 0), ((NI) IL64(9223372036854775807))); }
	unsureAsgnRef((void**) (&result), setLengthStr(result, ((NI) ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_7)))));
	if (old < 0 || old >= (result ? result->len : 0)){ raiseIndexError2(old,(result ? result->len : 0)-1); }
	if ((NU)(start) > (NU)(23)){ raiseIndexError2(start, 23); }
	if ((n) < ((NI) 0) || (n) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI(n, ((NI) 0), ((NI) IL64(9223372036854775807))); }
	copyMem__system_1727(((void*) ((&result->data[old]))), ((void*) ((&x[(start)- 0]))), ((NI) (n)));
}
static N_INLINE(void, addIntImpl__stdZprivateZdigitsutils_59)(NimStringDesc*& result, NU64 x) {
	tyArray__PbS9a6gkxCuxWEnFq4lOU9aw tmp;
	NI TM__J7BLF9cgvwzEso7aEL9cCOKw_8;
	NU64 num = x;
	NI next = ((NI) 23);
	{
		while (1) {
			NI TM__J7BLF9cgvwzEso7aEL9cCOKw_3;
			NI TM__J7BLF9cgvwzEso7aEL9cCOKw_4;
			if (!((NU64)(100ULL) <= (NU64)(num))) goto LA2;
			NU64 originNum = num;
			num = (NU64)((NU64)(num) / (NU64)(100ULL));
			NU64 index = (NU64)((NU64)((NU64)((NU64)(originNum) - (NU64)((NU64)((NU64)(num) * (NU64)(100ULL))))) << (NU64)(((NI) 1)));
			if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
			if ((NU)((NU64)((NU64)(index) + (NU64)(1ULL))) > (NU)(199)){ raiseIndexError2((NU64)((NU64)(index) + (NU64)(1ULL)), 199); }
			tmp[(next)- 0] = digits100__stdZprivateZdigitsutils_2[((NU64)((NU64)(index) + (NU64)(1ULL)))- 0];
			if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_3)) { raiseOverflow(); };
			if ((NU)((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3)) > (NU)(23)){ raiseIndexError2((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3), 23); }
			if ((NU)(index) > (NU)(199)){ raiseIndexError2(index, 199); }
			tmp[((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_3))- 0] = digits100__stdZprivateZdigitsutils_2[(index)- 0];
			if (nimSubInt(next, ((NI) 2), &TM__J7BLF9cgvwzEso7aEL9cCOKw_4)) { raiseOverflow(); };
			next = (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_4);
		} LA2: ;
	}
	{
		if (!((NU64)(num) < (NU64)(10ULL))) goto LA5_;
{		if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
		if ((NU64)((NU64)(48ULL) + (NU64)(num)) > (NU64)(((NI) 255))){ raiseRangeErrorNoArgs(); }
		tmp[(next)- 0] = ((NIM_CHAR) (((NI) ((NU64)((NU64)(48ULL) + (NU64)(num))))));
}	}
	goto LA3_;
	LA5_: ;
	{
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_5;
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_6;
		NU64 index_2 = (NU64)((NU64)(num) * (NU64)(2ULL));
		if ((NU)(next) > (NU)(23)){ raiseIndexError2(next, 23); }
		if ((NU)((NU64)((NU64)(index_2) + (NU64)(1ULL))) > (NU)(199)){ raiseIndexError2((NU64)((NU64)(index_2) + (NU64)(1ULL)), 199); }
		tmp[(next)- 0] = digits100__stdZprivateZdigitsutils_2[((NU64)((NU64)(index_2) + (NU64)(1ULL)))- 0];
		if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_5)) { raiseOverflow(); };
		if ((NU)((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5)) > (NU)(23)){ raiseIndexError2((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5), 23); }
		if ((NU)(index_2) > (NU)(199)){ raiseIndexError2(index_2, 199); }
		tmp[((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_5))- 0] = digits100__stdZprivateZdigitsutils_2[(index_2)- 0];
		if (nimSubInt(next, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_6)) { raiseOverflow(); };
		next = (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_6);
	}
	LA3_: ;
	if (nimSubInt(((NI) 24), next, &TM__J7BLF9cgvwzEso7aEL9cCOKw_8)) { raiseOverflow(); };
	addChars__stdZprivateZdigitsutils_100(result, tmp, next, (NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_8));
}
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_164)(NimStringDesc*& result, NU64 x) {
	addIntImpl__stdZprivateZdigitsutils_59(result, x);
}
N_LIB_PRIVATE N_NIMCALL(void, addInt__stdZprivateZdigitsutils_167)(NimStringDesc*& result, NI64 x) {
	NU64 numX60gensym3_;
	numX60gensym3_ = (NU64)0;
	{
		NI TM__J7BLF9cgvwzEso7aEL9cCOKw_2;
		if (!(x < IL64(0))) goto LA3_;
{		{
			if (!(x == (IL64(-9223372036854775807) - IL64(1)))) goto LA7_;
{			numX60gensym3_ = ((NU64) (x));
}		}
		goto LA5_;
		LA7_: ;
		{
			if (x == (IL64(-9223372036854775807) - IL64(1))){ raiseOverflow(); }
			numX60gensym3_ = ((NU64) (-(x)));
		}
		LA5_: ;
		NI baseX60gensym3_ = (result ? result->len : 0);
		if (nimAddInt(baseX60gensym3_, ((NI) 1), &TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) { raiseOverflow(); };
		if (((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) < ((NI) 0) || ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)) > ((NI) IL64(9223372036854775807))){ raiseRangeErrorI((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2), ((NI) 0), ((NI) IL64(9223372036854775807))); }
		unsureAsgnRef((void**) (&result), setLengthStr(result, ((NI) ((NI)(TM__J7BLF9cgvwzEso7aEL9cCOKw_2)))));
		if (baseX60gensym3_ < 0 || baseX60gensym3_ >= (result ? result->len : 0)){ raiseIndexError2(baseX60gensym3_,(result ? result->len : 0)-1); }
		result->data[baseX60gensym3_] = 45;
}	}
	goto LA1_;
	LA3_: ;
	{
		numX60gensym3_ = ((NU64) (x));
	}
	LA1_: ;
	addInt__stdZprivateZdigitsutils_164(result, numX60gensym3_);
}
