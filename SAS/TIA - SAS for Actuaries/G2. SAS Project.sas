/* Technical Skills Course – SAS Project */
 
/* 
Task #1: Copy the code within Titanic_SAS_Code.txt and paste it into a new SAS program.
Run the program and ensure you are getting the dataset you are expecting.
*/
DATA TITANIC;
	infile datalines delimiter='*';
	INPUT PassengerId $	Survived  Pclass $	Sex	$ Age  	SibSp 	Parch 	Ticket $	Fare	Cabin $	Embarked $;
	DATALINES;
	1*0*3*male*22*1*0*A/5 21171*7.25*.*S*
	2*1*1*female*38*1*0*PC 17599*71.2833*C85*C*
	3*1*3*female*26*0*0*STON/O2. 3101282*7.925*.*S*
	4*1*1*female*35*1*0*113803*53.1*C123*S*
	5*0*3*male*35*0*0*373450*8.05*.*S*
	6*0*3*male*.*0*0*330877*8.4583*.*Q*
	7*0*1*male*54*0*0*17463*51.8625*E46*S*
	8*0*3*male*2*3*1*349909*21.075*.*S*
	9*1*3*female*27*0*2*347742*11.1333*.*S*
	10*1*2*female*14*1*0*237736*30.0708*.*C*
	11*1*3*female*4*1*1*PP 9549*16.7*G6*S*
	12*1*1*female*58*0*0*113783*26.55*C103*S*
	13*0*3*male*20*0*0*A/5. 2151*8.05*.*S*
	14*0*3*male*39*1*5*347082*31.275*.*S*
	15*0*3*female*14*0*0*350406*7.8542*.*S*
	16*1*2*female*55*0*0*248706*16*.*S*
	17*0*3*male*2*4*1*382652*29.125*.*Q*
	18*1*2*male*.*0*0*244373*13*.*S*
	19*0*3*female*31*1*0*345763*18*.*S*
	20*1*3*female*.*0*0*2649*7.225*.*C*
	21*0*2*male*35*0*0*239865*26*.*S*
	22*1*2*male*34*0*0*248698*13*D56*S*
	23*1*3*female*15*0*0*330923*8.0292*.*Q*
	24*1*1*male*28*0*0*113788*35.5*A6*S*
	25*0*3*female*8*3*1*349909*21.075*.*S*
	26*1*3*female*38*1*5*347077*31.3875*.*S*
	27*0*3*male*.*0*0*2631*7.225*.*C*
	28*0*1*male*19*3*2*19950*263*C23 C25 C27*S*
	29*1*3*female*.*0*0*330959*7.8792*.*Q*
	30*0*3*male*.*0*0*349216*7.8958*.*S*
	31*0*1*male*40*0*0*PC 17601*27.7208*.*C*
	32*1*1*female*.*1*0*PC 17569*146.5208*B78*C*
	33*1*3*female*.*0*0*335677*7.75*.*Q*
	34*0*2*male*66*0*0*C.A. 24579*10.5*.*S*
	35*0*1*male*28*1*0*PC 17604*82.1708*.*C*
	36*0*1*male*42*1*0*113789*52*.*S*
	37*1*3*male*.*0*0*2677*7.2292*.*C*
	38*0*3*male*21*0*0*A./5. 2152*8.05*.*S*
	39*0*3*female*18*2*0*345764*18*.*S*
	40*1*3*female*14*1*0*2651*11.2417*.*C*
	41*0*3*female*40*1*0*7546*9.475*.*S*
	42*0*2*female*27*1*0*11668*21*.*S*
	43*0*3*male*.*0*0*349253*7.8958*.*C*
	44*1*2*female*3*1*2*SC/Paris 2123*41.5792*.*C*
	45*1*3*female*19*0*0*330958*7.8792*.*Q*
	46*0*3*male*.*0*0*S.C./A.4. 23567*8.05*.*S*
	47*0*3*male*.*1*0*370371*15.5*.*Q*
	48*1*3*female*.*0*0*14311*7.75*.*Q*
	49*0*3*male*.*2*0*2662*21.6792*.*C*
	50*0*3*female*18*1*0*349237*17.8*.*S*
	51*0*3*male*7*4*1*3101295*39.6875*.*S*
	52*0*3*male*21*0*0*A/4. 39886*7.8*.*S*
	53*1*1*female*49*1*0*PC 17572*76.7292*D33*C*
	54*1*2*female*29*1*0*2926*26*.*S*
	55*0*1*male*65*0*1*113509*61.9792*B30*C*
	56*1*1*male*.*0*0*19947*35.5*C52*S*
	57*1*2*female*21*0*0*C.A. 31026*10.5*.*S*
	58*0*3*male*28.5*0*0*2697*7.2292*.*C*
	59*1*2*female*5*1*2*C.A. 34651*27.75*.*S*
	60*0*3*male*11*5*2*CA 2144*46.9*.*S*
	61*0*3*male*22*0*0*2669*7.2292*.*C*
	62*1*1*female*38*0*0*113572*80*B28*.*
	63*0*1*male*45*1*0*36973*83.475*C83*S*
	64*0*3*male*4*3*2*347088*27.9*.*S*
	65*0*1*male*.*0*0*PC 17605*27.7208*.*C*
	66*1*3*male*.*1*1*2661*15.2458*.*C*
	67*1*2*female*29*0*0*C.A. 29395*10.5*F33*S*
	68*0*3*male*19*0*0*S.P. 3464*8.1583*.*S*
	69*1*3*female*17*4*2*3101281*7.925*.*S*
	70*0*3*male*26*2*0*315151*8.6625*.*S*
	71*0*2*male*32*0*0*C.A. 33111*10.5*.*S*
	72*0*3*female*16*5*2*CA 2144*46.9*.*S*
	73*0*2*male*21*0*0*S.O.C. 14879*73.5*.*S*
	74*0*3*male*26*1*0*2680*14.4542*.*C*
	75*1*3*male*32*0*0*1601*56.4958*.*S*
	76*0*3*male*25*0*0*348123*7.65*F G73*S*
	77*0*3*male*.*0*0*349208*7.8958*.*S*
	78*0*3*male*.*0*0*374746*8.05*.*S*
	79*1*2*male*0.83*0*2*248738*29*.*S*
	80*1*3*female*30*0*0*364516*12.475*.*S*
	81*0*3*male*22*0*0*345767*9*.*S*
	82*1*3*male*29*0*0*345779*9.5*.*S*
	83*1*3*female*.*0*0*330932*7.7875*.*Q*
	84*0*1*male*28*0*0*113059*47.1*.*S*
	85*1*2*female*17*0*0*SO/C 14885*10.5*.*S*
	86*1*3*female*33*3*0*3101278*15.85*.*S*
	87*0*3*male*16*1*3*W./C. 6608*34.375*.*S*
	88*0*3*male*.*0*0*SOTON/OQ 392086*8.05*.*S*
	89*1*1*female*23*3*2*19950*263*C23 C25 C27*S*
	90*0*3*male*24*0*0*343275*8.05*.*S*
	91*0*3*male*29*0*0*343276*8.05*.*S*
	92*0*3*male*20*0*0*347466*7.8542*.*S*
	93*0*1*male*46*1*0*W.E.P. 5734*61.175*E31*S*
	94*0*3*male*26*1*2*C.A. 2315*20.575*.*S*
	95*0*3*male*59*0*0*364500*7.25*.*S*
	96*0*3*male*.*0*0*374910*8.05*.*S*
	97*0*1*male*71*0*0*PC 17754*34.6542*A5*C*
	98*1*1*male*23*0*1*PC 17759*63.3583*D10 D12*C*
	99*1*2*female*34*0*1*231919*23*.*S*
	100*0*2*male*34*1*0*244367*26*.*S*
	101*0*3*female*28*0*0*349245*7.8958*.*S*
	102*0*3*male*.*0*0*349215*7.8958*.*S*
	103*0*1*male*21*0*1*35281*77.2875*D26*S*
	104*0*3*male*33*0*0*7540*8.6542*.*S*
	105*0*3*male*37*2*0*3101276*7.925*.*S*
	106*0*3*male*28*0*0*349207*7.8958*.*S*
	107*1*3*female*21*0*0*343120*7.65*.*S*
	108*1*3*male*.*0*0*312991*7.775*.*S*
	109*0*3*male*38*0*0*349249*7.8958*.*S*
	110*1*3*female*.*1*0*371110*24.15*.*Q*
	111*0*1*male*47*0*0*110465*52*C110*S*
	112*0*3*female*14.5*1*0*2665*14.4542*.*C*
	113*0*3*male*22*0*0*324669*8.05*.*S*
	114*0*3*female*20*1*0*4136*9.825*.*S*
	115*0*3*female*17*0*0*2627*14.4583*.*C*
	116*0*3*male*21*0*0*STON/O 2. 3101294*7.925*.*S*
	117*0*3*male*70.5*0*0*370369*7.75*.*Q*
	118*0*2*male*29*1*0*11668*21*.*S*
	119*0*1*male*24*0*1*PC 17558*247.5208*B58 B60*C*
	120*0*3*female*2*4*2*347082*31.275*.*S*
	121*0*2*male*21*2*0*S.O.C. 14879*73.5*.*S*
	122*0*3*male*.*0*0*A4. 54510*8.05*.*S*
	123*0*2*male*32.5*1*0*237736*30.0708*.*C*
	124*1*2*female*32.5*0*0*27267*13*E101*S*
	125*0*1*male*54*0*1*35281*77.2875*D26*S*
	126*1*3*male*12*1*0*2651*11.2417*.*C*
	127*0*3*male*.*0*0*370372*7.75*.*Q*
	128*1*3*male*24*0*0*C 17369*7.1417*.*S*
	129*1*3*female*.*1*1*2668*22.3583*F E69*C*
	130*0*3*male*45*0*0*347061*6.975*.*S*
	131*0*3*male*33*0*0*349241*7.8958*.*C*
	132*0*3*male*20*0*0*SOTON/O.Q. 3101307*7.05*.*S*
	133*0*3*female*47*1*0*A/5. 3337*14.5*.*S*
	134*1*2*female*29*1*0*228414*26*.*S*
	135*0*2*male*25*0*0*C.A. 29178*13*.*S*
	136*0*2*male*23*0*0*SC/PARIS 2133*15.0458*.*C*
	137*1*1*female*19*0*2*11752*26.2833*D47*S*
	138*0*1*male*37*1*0*113803*53.1*C123*S*
	139*0*3*male*16*0*0*7534*9.2167*.*S*
	140*0*1*male*24*0*0*PC 17593*79.2*B86*C*
	141*0*3*female*.*0*2*2678*15.2458*.*C*
	142*1*3*female*22*0*0*347081*7.75*.*S*
	143*1*3*female*24*1*0*STON/O2. 3101279*15.85*.*S*
	144*0*3*male*19*0*0*365222*6.75*.*Q*
	145*0*2*male*18*0*0*231945*11.5*.*S*
	146*0*2*male*19*1*1*C.A. 33112*36.75*.*S*
	147*1*3*male*27*0*0*350043*7.7958*.*S*
	148*0*3*female*9*2*2*W./C. 6608*34.375*.*S*
	149*0*2*male*36.5*0*2*230080*26*F2*S*
	150*0*2*male*42*0*0*244310*13*.*S*
	151*0*2*male*51*0*0*S.O.P. 1166*12.525*.*S*
	152*1*1*female*22*1*0*113776*66.6*C2*S*
	153*0*3*male*55.5*0*0*A.5. 11206*8.05*.*S*
	154*0*3*male*40.5*0*2*A/5. 851*14.5*.*S*
	155*0*3*male*.*0*0*Fa 265302*7.3125*.*S*
	156*0*1*male*51*0*1*PC 17597*61.3792*.*C*
	157*1*3*female*16*0*0*35851*7.7333*.*Q*
	158*0*3*male*30*0*0*SOTON/OQ 392090*8.05*.*S*
	159*0*3*male*.*0*0*315037*8.6625*.*S*
	160*0*3*male*.*8*2*CA. 2343*69.55*.*S*
	161*0*3*male*44*0*1*371362*16.1*.*S*
	162*1*2*female*40*0*0*C.A. 33595*15.75*.*S*
	163*0*3*male*26*0*0*347068*7.775*.*S*
	164*0*3*male*17*0*0*315093*8.6625*.*S*
	165*0*3*male*1*4*1*3101295*39.6875*.*S*
	166*1*3*male*9*0*2*363291*20.525*.*S*
	167*1*1*female*.*0*1*113505*55*E33*S*
	168*0*3*female*45*1*4*347088*27.9*.*S*
	169*0*1*male*.*0*0*PC 17318*25.925*.*S*
	170*0*3*male*28*0*0*1601*56.4958*.*S*
	171*0*1*male*61*0*0*111240*33.5*B19*S*
	172*0*3*male*4*4*1*382652*29.125*.*Q*
	173*1*3*female*1*1*1*347742*11.1333*.*S*
	174*0*3*male*21*0*0*STON/O 2. 3101280*7.925*.*S*
	175*0*1*male*56*0*0*17764*30.6958*A7*C*
	176*0*3*male*18*1*1*350404*7.8542*.*S*
	177*0*3*male*.*3*1*4133*25.4667*.*S*
	178*0*1*female*50*0*0*PC 17595*28.7125*C49*C*
	179*0*2*male*30*0*0*250653*13*.*S*
	180*0*3*male*36*0*0*LINE*0*.*S*
	181*0*3*female*.*8*2*CA. 2343*69.55*.*S*
	182*0*2*male*.*0*0*SC/PARIS 2131*15.05*.*C*
	183*0*3*male*9*4*2*347077*31.3875*.*S*
	184*1*2*male*1*2*1*230136*39*F4*S*
	185*1*3*female*4*0*2*315153*22.025*.*S*
	186*0*1*male*.*0*0*113767*50*A32*S*
	187*1*3*female*.*1*0*370365*15.5*.*Q*
	188*1*1*male*45*0*0*111428*26.55*.*S*
	189*0*3*male*40*1*1*364849*15.5*.*Q*
	190*0*3*male*36*0*0*349247*7.8958*.*S*
	191*1*2*female*32*0*0*234604*13*.*S*
	192*0*2*male*19*0*0*28424*13*.*S*
	193*1*3*female*19*1*0*350046*7.8542*.*S*
	194*1*2*male*3*1*1*230080*26*F2*S*
	195*1*1*female*44*0*0*PC 17610*27.7208*B4*C*
	196*1*1*female*58*0*0*PC 17569*146.5208*B80*C*
	197*0*3*male*.*0*0*368703*7.75*.*Q*
	198*0*3*male*42*0*1*4579*8.4042*.*S*
	199*1*3*female*.*0*0*370370*7.75*.*Q*
	200*0*2*female*24*0*0*248747*13*.*S*
	201*0*3*male*28*0*0*345770*9.5*.*S*
	202*0*3*male*.*8*2*CA. 2343*69.55*.*S*
	203*0*3*male*34*0*0*3101264*6.4958*.*S*
	204*0*3*male*45.5*0*0*2628*7.225*.*C*
	205*1*3*male*18*0*0*A/5 3540*8.05*.*S*
	206*0*3*female*2*0*1*347054*10.4625*G6*S*
	207*0*3*male*32*1*0*3101278*15.85*.*S*
	208*1*3*male*26*0*0*2699*18.7875*.*C*
	209*1*3*female*16*0*0*367231*7.75*.*Q*
	210*1*1*male*40*0*0*112277*31*A31*C*
	211*0*3*male*24*0*0*SOTON/O.Q. 3101311*7.05*.*S*
	212*1*2*female*35*0*0*F.C.C. 13528*21*.*S*
	213*0*3*male*22*0*0*A/5 21174*7.25*.*S*
	214*0*2*male*30*0*0*250646*13*.*S*
	215*0*3*male*.*1*0*367229*7.75*.*Q*
	216*1*1*female*31*1*0*35273*113.275*D36*C*
	217*1*3*female*27*0*0*STON/O2. 3101283*7.925*.*S*
	218*0*2*male*42*1*0*243847*27*.*S*
	219*1*1*female*32*0*0*11813*76.2917*D15*C*
	220*0*2*male*30*0*0*W/C 14208*10.5*.*S*
	221*1*3*male*16*0*0*SOTON/OQ 392089*8.05*.*S*
	222*0*2*male*27*0*0*220367*13*.*S*
	223*0*3*male*51*0*0*21440*8.05*.*S*
	224*0*3*male*.*0*0*349234*7.8958*.*S*
	225*1*1*male*38*1*0*19943*90*C93*S*
	226*0*3*male*22*0*0*PP 4348*9.35*.*S*
	227*1*2*male*19*0*0*SW/PP 751*10.5*.*S*
	228*0*3*male*20.5*0*0*A/5 21173*7.25*.*S*
	229*0*2*male*18*0*0*236171*13*.*S*
	230*0*3*female*.*3*1*4133*25.4667*.*S*
	231*1*1*female*35*1*0*36973*83.475*C83*S*
	232*0*3*male*29*0*0*347067*7.775*.*S*
	233*0*2*male*59*0*0*237442*13.5*.*S*
	234*1*3*female*5*4*2*347077*31.3875*.*S*
	235*0*2*male*24*0*0*C.A. 29566*10.5*.*S*
	236*0*3*female*.*0*0*W./C. 6609*7.55*.*S*
	237*0*2*male*44*1*0*26707*26*.*S*
	238*1*2*female*8*0*2*C.A. 31921*26.25*.*S*
	239*0*2*male*19*0*0*28665*10.5*.*S*
	240*0*2*male*33*0*0*SCO/W 1585*12.275*.*S*
	241*0*3*female*.*1*0*2665*14.4542*.*C*
	242*1*3*female*.*1*0*367230*15.5*.*Q*
	243*0*2*male*29*0*0*W./C. 14263*10.5*.*S*
	244*0*3*male*22*0*0*STON/O 2. 3101275*7.125*.*S*
	245*0*3*male*30*0*0*2694*7.225*.*C*
	246*0*1*male*44*2*0*19928*90*C78*Q*
	247*0*3*female*25*0*0*347071*7.775*.*S*
	248*1*2*female*24*0*2*250649*14.5*.*S*
	249*1*1*male*37*1*1*11751*52.5542*D35*S*
	250*0*2*male*54*1*0*244252*26*.*S*
	251*0*3*male*.*0*0*362316*7.25*.*S*
	252*0*3*female*29*1*1*347054*10.4625*G6*S*
	253*0*1*male*62*0*0*113514*26.55*C87*S*
	254*0*3*male*30*1*0*A/5. 3336*16.1*.*S*
	255*0*3*female*41*0*2*370129*20.2125*.*S*
	256*1*3*female*29*0*2*2650*15.2458*.*C*
	257*1*1*female*.*0*0*PC 17585*79.2*.*C*
	258*1*1*female*30*0*0*110152*86.5*B77*S*
	259*1*1*female*35*0*0*PC 17755*512.3292*.*C*
	260*1*2*female*50*0*1*230433*26*.*S*
	261*0*3*male*.*0*0*384461*7.75*.*Q*
	262*1*3*male*3*4*2*347077*31.3875*.*S*
	263*0*1*male*52*1*1*110413*79.65*E67*S*
	264*0*1*male*40*0*0*112059*0*B94*S*
	265*0*3*female*.*0*0*382649*7.75*.*Q*
	266*0*2*male*36*0*0*C.A. 17248*10.5*.*S*
	267*0*3*male*16*4*1*3101295*39.6875*.*S*
	268*1*3*male*25*1*0*347083*7.775*.*S*
	269*1*1*female*58*0*1*PC 17582*153.4625*C125*S*
	270*1*1*female*35*0*0*PC 17760*135.6333*C99*S*
	271*0*1*male*.*0*0*113798*31*.*S*
	272*1*3*male*25*0*0*LINE*0*.*S*
	273*1*2*female*41*0*1*250644*19.5*.*S*
	274*0*1*male*37*0*1*PC 17596*29.7*C118*C*
	275*1*3*female*.*0*0*370375*7.75*.*Q*
	276*1*1*female*63*1*0*13502*77.9583*D7*S*
	277*0*3*female*45*0*0*347073*7.75*.*S*
	278*0*2*male*.*0*0*239853*0*.*S*
	279*0*3*male*7*4*1*382652*29.125*.*Q*
	280*1*3*female*35*1*1*C.A. 2673*20.25*.*S*
	281*0*3*male*65*0*0*336439*7.75*.*Q*
	282*0*3*male*28*0*0*347464*7.8542*.*S*
	283*0*3*male*16*0*0*345778*9.5*.*S*
	284*1*3*male*19*0*0*A/5. 10482*8.05*.*S*
	285*0*1*male*.*0*0*113056*26*A19*S*
	286*0*3*male*33*0*0*349239*8.6625*.*C*
	287*1*3*male*30*0*0*345774*9.5*.*S*
	288*0*3*male*22*0*0*349206*7.8958*.*S*
	289*1*2*male*42*0*0*237798*13*.*S*
	290*1*3*female*22*0*0*370373*7.75*.*Q*
	291*1*1*female*26*0*0*19877*78.85*.*S*
	292*1*1*female*19*1*0*11967*91.0792*B49*C*
	293*0*2*male*36*0*0*SC/Paris 2163*12.875*D*C*
	294*0*3*female*24*0*0*349236*8.85*.*S*
	295*0*3*male*24*0*0*349233*7.8958*.*S*
	296*0*1*male*.*0*0*PC 17612*27.7208*.*C*
	297*0*3*male*23.5*0*0*2693*7.2292*.*C*
	298*0*1*female*2*1*2*113781*151.55*C22 C26*S*
	299*1*1*male*.*0*0*19988*30.5*C106*S*
	300*1*1*female*50*0*1*PC 17558*247.5208*B58 B60*C*
	301*1*3*female*.*0*0*9234*7.75*.*Q*
	302*1*3*male*.*2*0*367226*23.25*.*Q*
	303*0*3*male*19*0*0*LINE*0*.*S*
	304*1*2*female*.*0*0*226593*12.35*E101*Q*
	305*0*3*male*.*0*0*A/5 2466*8.05*.*S*
	306*1*1*male*0.92*1*2*113781*151.55*C22 C26*S*
	307*1*1*female*.*0*0*17421*110.8833*.*C*
	308*1*1*female*17*1*0*PC 17758*108.9*C65*C*
	309*0*2*male*30*1*0*P/PP 3381*24*.*C*
	310*1*1*female*30*0*0*PC 17485*56.9292*E36*C*
	311*1*1*female*24*0*0*11767*83.1583*C54*C*
	312*1*1*female*18*2*2*PC 17608*262.375*B57 B59 B63 B66*C*
	313*0*2*female*26*1*1*250651*26*.*S*
	314*0*3*male*28*0*0*349243*7.8958*.*S*
	315*0*2*male*43*1*1*F.C.C. 13529*26.25*.*S*
	316*1*3*female*26*0*0*347470*7.8542*.*S*
	317*1*2*female*24*1*0*244367*26*.*S*
	318*0*2*male*54*0*0*29011*14*.*S*
	319*1*1*female*31*0*2*36928*164.8667*C7*S*
	320*1*1*female*40*1*1*16966*134.5*E34*C*
	321*0*3*male*22*0*0*A/5 21172*7.25*.*S*
	322*0*3*male*27*0*0*349219*7.8958*.*S*
	323*1*2*female*30*0*0*234818*12.35*.*Q*
	324*1*2*female*22*1*1*248738*29*.*S*
	325*0*3*male*.*8*2*CA. 2343*69.55*.*S*
	326*1*1*female*36*0*0*PC 17760*135.6333*C32*C*
	327*0*3*male*61*0*0*345364*6.2375*.*S*
	328*1*2*female*36*0*0*28551*13*D*S*
	329*1*3*female*31*1*1*363291*20.525*.*S*
	330*1*1*female*16*0*1*111361*57.9792*B18*C*
	331*1*3*female*.*2*0*367226*23.25*.*Q*
	332*0*1*male*45.5*0*0*113043*28.5*C124*S*
	333*0*1*male*38*0*1*PC 17582*153.4625*C91*S*
	334*0*3*male*16*2*0*345764*18*.*S*
	335*1*1*female*.*1*0*PC 17611*133.65*.*S*
	336*0*3*male*.*0*0*349225*7.8958*.*S*
	337*0*1*male*29*1*0*113776*66.6*C2*S*
	338*1*1*female*41*0*0*16966*134.5*E40*C*
	339*1*3*male*45*0*0*7598*8.05*.*S*
	340*0*1*male*45*0*0*113784*35.5*T*S*
	341*1*2*male*2*1*1*230080*26*F2*S*
	342*1*1*female*24*3*2*19950*263*C23 C25 C27*S*
	343*0*2*male*28*0*0*248740*13*.*S*
	344*0*2*male*25*0*0*244361*13*.*S*
	345*0*2*male*36*0*0*229236*13*.*S*
	346*1*2*female*24*0*0*248733*13*F33*S*
	347*1*2*female*40*0*0*31418*13*.*S*
	348*1*3*female*.*1*0*386525*16.1*.*S*
	349*1*3*male*3*1*1*C.A. 37671*15.9*.*S*
	350*0*3*male*42*0*0*315088*8.6625*.*S*
	351*0*3*male*23*0*0*7267*9.225*.*S*
	352*0*1*male*.*0*0*113510*35*C128*S*
	353*0*3*male*15*1*1*2695*7.2292*.*C*
	354*0*3*male*25*1*0*349237*17.8*.*S*
	355*0*3*male*.*0*0*2647*7.225*.*C*
	356*0*3*male*28*0*0*345783*9.5*.*S*
	357*1*1*female*22*0*1*113505*55*E33*S*
	358*0*2*female*38*0*0*237671*13*.*S*
	359*1*3*female*.*0*0*330931*7.8792*.*Q*
	360*1*3*female*.*0*0*330980*7.8792*.*Q*
	361*0*3*male*40*1*4*347088*27.9*.*S*
	362*0*2*male*29*1*0*SC/PARIS 2167*27.7208*.*C*
	363*0*3*female*45*0*1*2691*14.4542*.*C*
	364*0*3*male*35*0*0*SOTON/O.Q. 3101310*7.05*.*S*
	365*0*3*male*.*1*0*370365*15.5*.*Q*
	366*0*3*male*30*0*0*C 7076*7.25*.*S*
	367*1*1*female*60*1*0*110813*75.25*D37*C*
	368*1*3*female*.*0*0*2626*7.2292*.*C*
	369*1*3*female*.*0*0*14313*7.75*.*Q*
	370*1*1*female*24*0*0*PC 17477*69.3*B35*C*
	371*1*1*male*25*1*0*11765*55.4417*E50*C*
	372*0*3*male*18*1*0*3101267*6.4958*.*S*
	373*0*3*male*19*0*0*323951*8.05*.*S*
	374*0*1*male*22*0*0*PC 17760*135.6333*.*C*
	375*0*3*female*3*3*1*349909*21.075*.*S*
	376*1*1*female*.*1*0*PC 17604*82.1708*.*C*
	377*1*3*female*22*0*0*C 7077*7.25*.*S*
	378*0*1*male*27*0*2*113503*211.5*C82*C*
	379*0*3*male*20*0*0*2648*4.0125*.*C*
	380*0*3*male*19*0*0*347069*7.775*.*S*
	381*1*1*female*42*0*0*PC 17757*227.525*.*C*
	382*1*3*female*1*0*2*2653*15.7417*.*C*
	383*0*3*male*32*0*0*STON/O 2. 3101293*7.925*.*S*
	384*1*1*female*35*1*0*113789*52*.*S*
	385*0*3*male*.*0*0*349227*7.8958*.*S*
	386*0*2*male*18*0*0*S.O.C. 14879*73.5*.*S*
	387*0*3*male*1*5*2*CA 2144*46.9*.*S*
	388*1*2*female*36*0*0*27849*13*.*S*
	389*0*3*male*.*0*0*367655*7.7292*.*Q*
	390*1*2*female*17*0*0*SC 1748*12*.*C*
	391*1*1*male*36*1*2*113760*120*B96 B98*S*
	392*1*3*male*21*0*0*350034*7.7958*.*S*
	393*0*3*male*28*2*0*3101277*7.925*.*S*
	394*1*1*female*23*1*0*35273*113.275*D36*C*
	395*1*3*female*24*0*2*PP 9549*16.7*G6*S*
	396*0*3*male*22*0*0*350052*7.7958*.*S*
	397*0*3*female*31*0*0*350407*7.8542*.*S*
	398*0*2*male*46*0*0*28403*26*.*S*
	399*0*2*male*23*0*0*244278*10.5*.*S*
	;
RUN;

/*
Task #2: Perform exploratory analysis
-How many males and females are in this sample?
-How many people are in each class?
-What is the average age?
-What is the minimum, maximum, average, and standard deviation of the fares?
-What percentage of males and females survived?
-What percentage of people survived by class?
-Perform correlation analysis between various variables.
*/

/* How many males and females are in this sample? */
PROC REPORT DATA=TITANIC;
COLUMN Sex N;
DEFINE SEX / GROUP;
RUN;
/* Males: 247, Females: 152 */

/* How many people are in each class? */
PROC REPORT DATA=TITANIC;
COLUMN Pclass N;
DEFINE Pclass / GROUP;
RUN;
/* Class 1: 93, Class 82: 152, Class 224: */

/* What is the average age? */

PROC SORT DATA=TITANIC;
BY AGE;
RUN;

PROC MEANS DATA=TITANIC;
VAR AGE;
RUN;

/* Average age: 28.6845794*/

/* What is the minimum, maximum, average, and standard deviation of the fares? */
PROC SORT DATA=TITANIC;
BY Fare;
RUN;

PROC MEANS DATA=TITANIC;
VAR Fare;
RUN;

/*Min: 0, Max: 512.3292, Average: 33.2934306, Standard Deviation: 50.1921207*/

/* What percentage of males and females survived? */
PROC SQL;
CREATE TABLE SEX_SURVIVED AS
SELECT TITANIC.SEX, SUM(TITANIC.SURVIVED) AS SUM_SURVIVED, COUNT(TITANIC.PASSENGERID) AS TOTAL_PASSENGER,
SUM(TITANIC.SURVIVED) / COUNT(TITANIC.PASSENGERID) *100 AS PERCENT_SURVIVED
FROM TITANIC
GROUP BY TITANIC.SEX;
RUN;

/* Male: 16.19%, Female: 76.32%*/

/* What percentage of people survived by class? */
PROC SQL;
CREATE TABLE Class_SURVIVED AS
SELECT TITANIC.PCLASS, SUM(TITANIC.SURVIVED) AS SUM_SURVIVED, COUNT(TITANIC.PASSENGERID) AS TOTAL_PASSENGER,
SUM(TITANIC.SURVIVED) / COUNT(TITANIC.PASSENGERID) *100 AS PERCENT_SURVIVED
FROM TITANIC
GROUP BY TITANIC.PCLASS;
RUN; 
/* Class 1: 58.06%, Class 2: 42.68%, Class 3: 29.91% */

/* Perform correlation analysis between various variables. */

/* Manulate to choose data that has age information*/
DATA TITANIC_AGE;
SET TITANIC;
IF AGE;
RUN;

ODS GRAPHICS ON;
PROC CORR DATA=TITANIC_AGE PLOTS = SCATTER;
VAR AGE;
WITH Fare;
RUN;



/*
Task 3: Get your data ready for a regression model to predict survival. 
Feel free to create new variables that you feel are important. 
A lot of ages are missing, how do you want to handle that? 
Drop columns that you feel aren’t useful. Map the “Embarked” column to their full port names.
(i.e. C = Cherbourg, Q = Queenstown, S= Southhampton)
*/

/*First, remove data missing ages and drop the unnecessary fields */
DATA TITANIC_REG (DROP=Ticket Cabin);
SET TITANIC;
IF AGE;

/*Group by Gender+Class*/
IF Sex = "female" AND Pclass = "1" THEN GenClass = "UpperFemale";
ELSE IF Sex = "female" AND Pclass = "2" THEN GenClass = "MidFemale";
ELSE IF Sex = "female" AND Pclass = "3" THEN GenClass = "LowerFemale";
ELSE IF Sex = "male" AND Pclass = "1" THEN GenClass = "UpperMale";
ELSE IF Sex = "male" AND Pclass = "2" THEN GenClass = "MidMale";
ELSE IF Sex = "male" AND Pclass = "3" THEN GenClass = "LowerMale";
ELSE GenClass = "Unknown";

/*Group by Age*/
IF Age <=15 THEN AgeCategory="Child";
ELSE IF Age <=25 THEN AgeCategory = "16-25";
ELSE IF Age <=35 THEN AgeCategory = "26-35";
ELSE IF Age <=45 THEN AgeCategory = "36-45";
ELSE IF Age <=55 THEN AgeCategory = "46-55";
ELSE IF Age <=65 THEN AgeCategory = "56-65";
ELSE IF Age > 65 THEN AgeCategory = "Elder";
ELSE AgeCategory = "Unknown";

/*Group by Embarked*/
IF Embarked = "S" THEN PortName = "SOUTHAMPTON";
ELSE IF Embarked = "C" THEN PortName = "CHERBOURG";
ELSE IF Embarked = "Q" THEN PortName = "QUEENSTOWN";
ELSE PortName = "Unknown";

/*
Task 4: Create a regression model to predict if a person onboarding the Titanic will survive or not. 
Your response variable is “Survived” and use as many independent variables as you feel is necessary. 
Note: if you want to use categorical variables such as Pclass and Sex, you need to translate them 
into numerical values before using them as independent variables in PROC REG.(e.g. Male = 1, Female = 2)
*/

/* Convert categorical vaariables into numerical values */
IF Sex = "male" THEN Gender = 1;
ELSE IF Sex = "female" THEN Gender = 2;
ELSE Gender = 0;

Workclass =  PClass * 1;

/*The following line comes after running regression model*/
PredSurvivalRate = -0.13958 + 0.55889*Gender - 0.10730*Workclass;

RUN;

PROC REG DATA=TITANIC_REG;
MODEL Survived = Gender Workclass;
RUN;

/*
Task 5: Pretend you were selling life insurance, with a $100,000 payout, right before the Titanic left. 
Five people were interested in buying your life insurance. Below is their data. (Can be found in .pdf file)
Predict if they will survive or not using your regression model. Decide which ones out of the five, 
you are willing to sell the insurance to if the premium is $25,000 per person. 
(Hint: $100,000 x probability of death < $25,000)
*/


/* Make a new data for the given insurance customers*/
DATA TITANIC_INS;
	infile datalines delimiter='*';
	INPUT Pclass Name $ Sex $ Age SibSp Parch Fare Cabin $ Embarked $;
	DATALINES;
	1*Andrew*female*30*0*0*106*.*C
	3*Sarah*male*22*0*0*7*.*C
	3*Kate*female*.*0*0*8*.*Q
	1*Tina*female*52*1*0*78*D20*C
	3*Leo*male*30*0*0*8*.*S
	;
RUN;

/* Add a new column Decision to indicate whether to sell or not based on the previous regression model. */
DATA TITANIC_INS_DECISION;
SET TITANIC_INS;

IF Sex = "male" THEN Gender = 1;
ELSE IF Sex = "female" THEN Gender = 2;
ELSE Gender = 0;

Workclass =  PClass * 1;
PredSurvivalRate = -0.13958 + 0.55889*Gender - 0.10730*Workclass;

IF PredSurvivalRate * 100000 > 25000 THEN Decision = "Yes";
ELSE Decision = "No";
RUN;

/*
Task 6: You know the true outcomes of the five people who bought your life insurance. 
If they perished, you need to pay their beneficiary $100,000. 
If they survived, you get to keep the premium (which was $25,000 per person). 
Calculate your profit or loss in total for people you decided to insure. 
Leo was the only one who perished out of the five people who bought your life insurance.
*/

DATA TITANIC_INS_OUTCOME;
SET TITANIC_INS_DECISION (KEEP=Name Decision);

INPUT TrueOutcome_Survival $;
DATALINES;
Yes
Yes
Yes
Yes
No
;
RUN;

DATA TITANIC_INS_PROFIT;
SET TITANIC_INS_OUTCOME;


IF Decision = "No" THEN Profit = 0;
ELSE IF Decision = "Yes" AND TrueOutcome_Survival = "Yes" THEN Profit = 25000;
ELSE IF Decision = "Yes" AND TrueOutcome_Survival = "No" THEN Profit = -75000;
RUN;

PROC PRINT DATA=TITANIC_INS_PROFIT;
SUM Profit;
RUN;

/* SCENARIO 2 where insurance was sold to all 5 people*/ 
DATA TITANIC_INS_OUTCOME2;
SET TITANIC_INS;

INPUT Decision $ TrueOutcome_Survival $;
DATALINES;
Yes Yes
Yes Yes
Yes Yes
Yes Yes
Yes No
;
RUN;

DATA TITANIC_INS_PROFIT2;
SET TITANIC_INS_OUTCOME2;


IF Decision = "No" THEN Profit = 0;
ELSE IF Decision = "Yes" AND TrueOutcome_Survival = "Yes" THEN Profit = 25000;
ELSE IF Decision = "Yes" AND TrueOutcome_Survival = "No" THEN Profit = -75000;
RUN;

PROC PRINT DATA=TITANIC_INS_PROFIT2;
SUM Profit;
RUN;
