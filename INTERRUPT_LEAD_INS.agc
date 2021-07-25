### FILE="Main.annotation"
## Copyright:	Public domain.
## Filename:	INTERRUPT_LEAD_INS.agc
## Purpose:	Part of the source code for Artemis (i.e., Colossus 3),
##		build 072.  This is for the Command Module's (CM)
##		Apollo Guidance Computer (AGC), for
##		Apollo 15-17.
## Assembler:	yaYUL
## Contact:	Jim Lawton <jim DOT lawton AT gmail DOT com>
## Website:	www.ibiblio.org/apollo/index.html
## Page Scans:	www.ibiblio.org/apollo/ScansForConversion/Artemis072/
## Mod history:	2009-07-25 JL	Adapted from corresponding Comanche 055 file.
## 		2010-02-02 JL	Added missing RESUME.
##		2010-02-20 RSB	Un-##'d this header.
##		2017-02-05 RSB	Proofed comment text by diff'ing vs Comanche 55
##				but no differences found.

## Page 139
		SETLOC	4000

		COUNT*	$$/RUPTS

		INHINT			# GO
		CAF	GOBB
		XCH	BBANK
		TCF	GOPROG

		DXCH	ARUPT		# T6RUPT
		EXTEND
		DCA	T6LOC
		DTCB

		DXCH	ARUPT		# T5RUPT
		CS	TIME5
		AD	.5SEC
		TCF	T5RUPT

		DXCH	ARUPT		# T3RUPT
		CAF	T3RPTBB
		XCH	BBANK
		TCF	T3RUPT

		DXCH	ARUPT		# T4RUPT
		CAF	T4RPTBB
		XCH	BBANK
		TCF	T4RUPT

		DXCH	ARUPT		# KEYRUPT1
		CAF	KEYRPTBB
		XCH	BBANK
		TCF	KEYRUPT1

		DXCH	ARUPT		# KEYRUPT2
		CAF	MKRUPTBB
		XCH	BBANK
		TCF	MARKRUPT

		DXCH	ARUPT		# UPRUPT
		CAF	UPRPTBB
		XCH	BBANK
		TCF	UPRUPT

		DXCH	ARUPT		# DOWNRUPT
		CAF	DWNRPTBB
		XCH	BBANK
		TCF	DODOWNTM

		DXCH	ARUPT		# RADAR RUPT
		CAF	RDRPTBB
## Page 140
		XCH	BBANK
		TCF	VHFREAD

		RESUME

		EBANK=	LST1		# RESTART USES E0,E3
GOBB		BBCON	GOPROG

		EBANK=	LST1
T3RPTBB		EQUALS	WAITBB
KEYRPTBB	=	MKRUPTBB

		EBANK=	MRKBUF1
MKRUPTBB	BBCON	MARKRUPT
UPRPTBB		=	KEYRPTBB
DWNRPTBB	=	GOBB

		EBANK=	RM
RDRPTBB		BBCON	VHFREAD
		EBANK=	DSRUPTSW
T4RPTBB		BBCON	T4RUPT
		EBANK=	TIME1
T5RPTBB		BBCON	T5RUPT

T5RUPT		EXTEND
		BZMF	NOQBRSM
		EXTEND
		DCA	T5LOC
		DTCB
