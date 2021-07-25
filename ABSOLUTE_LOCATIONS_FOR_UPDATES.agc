### FILE="Main.annotation"
## Copyright:	Public domain.
## Filename:	ABSOLUTE_LOCATIONS_FOR_UPDATES.agc
## Purpose:	Part of the source code for Artemis (i.e., Colossus 3),
##		build 072.  This is for the Command Module's (CM) 
##		Apollo Guidance Computer (AGC), for 
##		Apollo 15-17.
## Assembler:	yaYUL
## Contact:	Onno Hommes <ohommes@alumni.cmu.edu>
## Website:	www.ibiblio.org/apollo/index.html
## Page Scans:	www.ibiblio.org/apollo/ScansForConversion/Artemis072/
## Mod history:	2009-07-29 OH	New file created.
##		2009-09-01 JL	Commented out =ECADR directives, see note below.
##		2009-09-03 JL	Uncommented =ECADR directives, after modifying yaYUL to skip them.
##		2010-01-16 RSB	Commented them out again, to eliminate compile-time warnings.
##		2010-02-20 RSB	Un-##'d this header.
##		2011-05-07 JL	Removed comment.
##		2017-01-04 RSB	Proofed comment text using octopus/ProoferComments
##				and fixed errors found.
##		2017-01-21 RSB	Double-checked comment text by direct visual comparison
##				to scanned page.

## Page 36
# ECADR			MNEMONIC
# -----			--------
		=ECADR	UPSVFLAG	# CSM/LM STATE VECTOR UPDATE
		
		=ECADR	XSMD		# DESIRED REFSMMAT UPDATE

		=ECADR	REFSMMAT	# REFSMMAT UPDATE
		
		=ECADR	DELVSLV		# EXTERNAL DELTA-V UPDATE
		
		=ECADR	LAT(SPL)	# RETROFIRE EXT DELTA-V OR ENTRY UPDATE
		
		=ECADR	TIG		# LAMBERT TARGET UPDATE
		
		=ECADR	RLS		# LANDING SITE VECTOR UPDATE
