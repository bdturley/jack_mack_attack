1.00.dat
h1_1.00 # Updated model for SC08
#	Number	of	stocks
1
#	Names	of	stocks
Stock
# Selectivity sharing vector (number_fisheries + number_surveys)
# Selectivity mirroring / mapping options  
#Fsh_1 Fsh_2 Fsh_3 Fsh_4 Srv_1 Srv_2 Srv_3 Srv_4 Srv_5 Srv_6 Srv_7
#N_Chile_Fsh CS_Chile_Fsh FarNorth_Fsh Offshore_Trawl_Fsh Chile_AcousCS Chile_AcousN Chilean_CPUE DEPM Peru_Acoustic Peru_CPUE Offshore_CPUE #  
# 2 3 4 1 2 3 4 5 6 7
1 1 1 1 1 1 1 1 1 1 1	# Index of the stock (for the 2 stock model; ignore here)
1 1 1 1 2 2 1 2 1 1 1	# Fleet Type (1=fishery, 2=index)  
1 2 3 4 1 2 2 4 3 3 4	# Index *within* that type (e.g., the first column (N_Chile) is its own selectivity pattern (1-1), second one (CS_Chile) shares selectivity with the seventh (Chilean_CPUE) (1-2))
#Number of regimes (by stock)
1						# Stock-recruitment regimes
#Sr_type 
2  						# Type of stock-recruit curve. 2 = Beverton-Holt
#AgeError
0  						# Don't use the ageing error matrix (ignore)
#Retro 
0  						# Number of retrospective years to peel off (ignore)
#Recruitment sharing matrix (number_stocks, number_regimes)
1
#Steepness 
0.65 	# Steepness prior
300 	# CV of steepness prior
-6		# Phase estimated  (so this is fixed)
#SigmaR 
0.6 	# Sigma R prior
15		# CV of sigR prior 
-4  	# Phase estimated (so this is fixed)
#phase_Rzero
4
#Nyrs_sr
18		# Number of years from which to estimate the stock-recruit relationship
#yrs_sr
	2000	2001	2002	2003	2004	2005	2006	2007	2008	2009	2010	2011	2012	2013	2014	2015	2016	2017
#reg_shifts blank if nreg==1


#Growth parameters sharing matrix (number_stocks, number_regimes)
1
#Linf
74.4	# Prior
0.1		# CV	
-4		# Phase																																					
#K
0.16	# Prior
0.1		# CV
-4		# Phase																																									
#Lo_Len	# I think this is length at age 0? But double-check
18		# Prior
0.1		# CV
-4		# Phase																																						
#Sigma_len
0.09 	# Prior
0.1		# CV
-4		# Phase
#  !! lw_a = 0.007778994e-3 ; // Length-Weight parameters from Talcahuano sampling, 2008
#  !! lw_b = 3.089248476 ; // Length-Weight parameters from Talcahuano sampling, 2008																																									
#Mortality sharing matrix (number_stocks, number_regimes)
1
#Natural_Mortality 
0.23 	# Prior
0.05 	# CV
-4   	# Phase
# NEW npars_mage
0
# NEW ages_M_changes

# NEW Mage_in

# phase_Mage
-5 		# For age-specific M, ignore
#Phase_Random_walk_M 
-4
#Nyrs_Random_walk_M 
0
#Random_walk_M_yrs blank if nyrs==0

#Random_walk_M_sigmas blank if nyrs==0

#catchability 
1.143881847	0.029045376	0.000159487	0.519171913	0.002284038	0.007987171	0.033884372	# fleet-specific q priors
12  12  12  12  12  12  12															# q CVs
3  5  3  3  3  4  4																	# fleet-specific phases
#q_power                    
1  1  1  1  1  1  1		# q power.. need to look this up. Related to random walk.
1.2  1.2  1.2  1.2  1.2  1.2  1.2
-1  -1  -1  -1  -1  -1  -1
#Random_walk_q_phases                    
1  -1  1  -1  1  -1  -1
#Nyrs_Random_walk_q
1  0  1  0  0  0  0		# catchability blocks, specific to N_Chile and FarNorth fleets
#Random_walk_q_yrs blank if nyrs==0
2002 	# Start year for catchability change for N_Chile
2000	# Start year for catchability change for FarNorth
#Random_walk_q_sigmas blank if nyrs==0
2.0
2.0
#q_agemin                    
2  2  2  2  2  2  2			# Minimum age that q relates to (fleet-specific)
#q_agemax                    
10  10  10  10  10  10  10	# Minimum age that q relates to (fleet-specific)
#use vb wt age                    
0		# Flag to use hard-wired tw-age as function of VB params (not inputs) (ignore)
#n_proj_yrs                    
20  	# Number of years to project forward for MSY estimation
#---------------------------------------------------------
# Fishery 1 N Chile  
1  #selectivity type
9  #n_sel_ages
2  #phase sel
1  #curvature penalty
1  #Dome-shape penalty
# Years of selectivity change Fishery 1 N Chile  
36																													
1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	1996	1997	1998	1999	2000	2001	2002	2003	2004	2005	2006	2007	2008	2009	2010	2011	2012	2013    2014    2015    2016	2017	2018	2019
0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5 0.5 0.5 0.5 0.5	0.5
# Initial values for coefficitients at each change (one for every change plus 1)  
# 2 3 4 5 6 7 8 9 10 11 12  
0.2 0.7 1 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Fishery 2, Central South Chile  
1																														
10																														
3																														
1																														
25																														
#	Years	of	selectivity	change	Fishery	2,	Central	South	Chile																					
37																												
1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	1996	1997	1998	1999	2000	2001	2002	2003	2004	2005	2006	2007	2008	2009	2010	2011	2012	2013	2014	2015	2016	2017	2018	2019	2020
0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5	0.5 0.5 0.5 0.5 0.5 0.5	0.5
#	Initial	values	for	coefficitients	at	each	change	(one	for	every	change	plus	1)																	
#	2	3	4	5	6	7	8	9	10	11	12																			
0.2	0.7	1	1	1	1	1	1	1	1	1	1																			
#---------------------------------------------------------
# Fishery 3 Peru  
1  
7  
4  
1  
12.5  
# Years of selectivity change Fishery 3 Peru  
40
1981	1982	1983	1984	1985	1986	1987	1988	1989	1990	1991	1992	1993	1994	1995	1996	1997	1998	1999	2000	2001	2002	2003	2004	2005	2006	2007	2008	2009	2010	2011	2012	2013	2014	2015	2016	2017	2018	2019	2020
0.5	0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 .5 .5 .5 .5 0.5	0.5
# Initial values for coefficitients at each change (one for every change plus 1)  
# 2 3 4 5 6 7 8 9 10 11 12  
0.2 0.7 1 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Fishery 4 International  
1  
9  
3  
1  
12.5  
# Years of selectivity change Fishery 4 International  
31
1980	1981	1982	1983	1984	1985	1986	1987	1988	1989	1990	1991	2000	2001	2002	2003	2006	2007	2008	2009	2010	2011	2012	2013	2014	2015	2016	2017	2018	2019	2020
0.5	0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 .5 .5 .5 .5 .5 .5	.5
# Initial values for coefficitients at each change (one for every change plus 1)  
# 2 3 4 5 6 7 8 9 10 11 12  
0.2 0.7 1 1 1 1 1 1 1 1 1 1
#---------------------------------------------------------  
# Index number 1 AcousCS  
1  
10  
2  
0.25  
100  
1
2005
0.7
0.3 1 1 1 1 1 1 1 1 1 1 1
#---------------------------------------------------------  
# Index number 2 Acous_N  
1  
10  
5  
0.25  
100  
# Years of selectivity change 
2 
2012 2016
0.5 0.5
0.3 1 1 1 1 1 1 1 1 1 1 1 
#--------------------------------------------------------- 
# Index number 3 Chile_CPUE  
1  
10  
-5  
0.25  
100  
0 
0.8 1 1 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Index number 4 DEPM  
1  
10  
3  
0.25  
100 # 1971 1972 1973 1974 1975 1976 1977 1978 1979 1980 1981 1982 1983 1984 1985 1986 1987 1988 1989 1990 1991 1992 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009 2010
1
2003
0.7
0.04 0.43 0.93 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Index number 5 Acoustic_Peru  
1  
10  
-5  
0.25  
100  
0
0.04 0.43 0.93 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Index number 6 Peru_CPUE  
1  
10  
-5  
0.25  
100  
0 
0.04 0.43 0.93 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
# Index number 7 EU_CPUE  
1  
10  
-5  
0.25  
100  
0 
0.04 0.43 0.93 1 1 1 1 1 1 1 1 1  
#---------------------------------------------------------
#Population	Weight	at	Age	1000																																							
0.051	0.0884	0.134	0.195	0.2612	0.328	0.4184	0.5344	0.6814	0.8426	1.0705	1.4589
#Maturity	at	Age	6	7	8	9	10	11	12																																		
0.072426485	0.312168669	0.725119498	0.938773837	0.988903862	0.998073265	0.999667986	0.999942863	0.999990169	0.999998309	0.999999709	0.99999995
#Test  
123456789  

